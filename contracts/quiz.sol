// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuizGame {
    // Mapping of players to their scores
    mapping (address => uint256) public playerScores;

    // Mapping of questions to their correct answers and options
    struct Question {
        string question;
        string[] options;
        uint256 correctOption;
        uint256 reward;
    }
    mapping (uint256 => Question) public questions;

    // Token contract address
    address public tokenContract;

    // Event emitted when a player answers a question correctly
    event CorrectAnswer(address player, uint256 questionId, uint256 reward);

    // Event emitted when a player answers a question incorrectly
    event IncorrectAnswer(address player, uint256 questionId);

    // Constructor function
    constructor(address _tokenContract) {
        tokenContract = _tokenContract;
    }

    // Function to add a new question to the game
    function addQuestion(uint256 questionId, string memory question, string[] memory options, uint256 correctOption, uint256 reward) public {
        questions[questionId] = Question(question, options, correctOption, reward);
    }

    // Function to submit an answer to a question
    function submitAnswer(uint256 questionId, uint256 answer) public {
        // Get the question details
        Question storage question = questions[questionId];

        // Check if the answer is correct
        if (answer == question.correctOption) {
            // Transfer reward tokens to the player
            (bool success, ) = tokenContract.call(
                abi.encodeWithSignature("transfer(address,uint256)", msg.sender, question.reward)
            );
            require(success, "Token transfer failed");

            // Update the player's score
            playerScores[msg.sender] += question.reward;
            emit CorrectAnswer(msg.sender, questionId, question.reward);
        } else {
            emit IncorrectAnswer(msg.sender, questionId);
        }
    }

    // Function to get a player's score
    function getPlayerScore(address player) public view returns (uint256) {
        return playerScores[player];
    }
}

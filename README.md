### **QuizGame DApp**
![image](https://github.com/user-attachments/assets/5c4812b5-f8b4-4b9b-bdf7-a2c433a698f0)

## Vision

The QuizGame DApp is designed to create an engaging and transparent platform for quiz enthusiasts, powered by blockchain technology. By integrating an ERC20 token reward system, the platform incentivizes learning and provides a decentralized way for players to earn rewards. This ensures fairness, transparency, and security in the quiz gaming experience.

## Flowchart

```
 +--------------------------------------------------+
 |                      Start                       |
 +--------------------------------------------------+
                 |
                 v
 +-----------------------------+     +--------------------------------------+
 | Admin Deploys QuizGame       |     | Deploys ERC20 Token Contract         |
 +-----------------------------+     +--------------------------------------+
                 |                             |
                 v                             v
 +-----------------------------+     +--------------------------------------+
 | Admin Adds Questions         |     | Admin Funds QuizGame Contract        |
 +-----------------------------+     +--------------------------------------+
                 |
                 v
 +--------------------------------------------------+
 | Player Submits Answer                             |
 +--------------------------------------------------+
                 |
                 v
 +----------------------------------+      +--------------------------------+
 | Is Answer Correct?               | Yes  | Transfer Token Reward to Player|
 +----------------------------------+      +--------------------------------+
                 | No                          |
                 v                             v
 +--------------------------------------------------+
 | Emit IncorrectAnswer Event                       |
 +--------------------------------------------------+
                 |
                 v
 +-----------------------------+
 | Player Checks Their Score    |
 +-----------------------------+
                 |
                 v
 +-----------------------------+
 |                End           |
 +-----------------------------+
```

## Contract Addresses

- **QuizGame Contract**: `0xaea8a5fab6160092f97afdadf8a5324671251283`
- **ERC20 Token Contract**: `0x46c29e85c8ea8f9a1c911093fbebfb2bf41f03a4`

  ![image](https://github.com/user-attachments/assets/0ec837f8-e672-404d-bffd-b22975f08a62)



## How to Use

1. **Deploy Contracts**:
   - Deploy an ERC20 token contract.
   - Deploy the `QuizGame` contract, passing the ERC20 token contract address as a parameter.

2. **Admin Actions**:
   - Add quiz questions using the `addQuestion` function.
   - Transfer tokens to the `QuizGame` contract to fund rewards.

3. **Player Actions**:
   - Players can submit answers using the `submitAnswer` function.
   - If correct, players receive tokens as rewards.
   - Players can check their scores using the `getPlayerScore` function.

## Future Scope

- **Multiplayer Mode**: Implement real-time multiplayer quizzes.
- **Leaderboard**: Add a global leaderboard for top scorers.
- **NFT Rewards**: Introduce NFTs as special rewards for significant achievements.
- **Cross-Platform Integration**: Expand the platform to support quizzes across various domains.
- **Smart Contract Upgrades**: Implement upgradable smart contracts for future enhancements.

## Contact

- **Developer**: Nichol Das
- **Email**: nicholdas07@gmail.com
- **GitHub**: https://github.com/Nichkol
- **LinkedIn**: https://www.linkedin.com/in/nicholdas

---

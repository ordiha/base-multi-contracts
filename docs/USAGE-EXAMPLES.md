# Usage Examples for Base Multi Contracts

This guide provides examples for interacting with the contracts deployed in the Base Multi Contracts repository on Base mainnet.

## 1. TokenVault
- **Description**: Stores token deposits.
- **Examples**:
  - **Deposit 10 tokens**:
    - Function: `deposit(uint256 _amount)`
    - Input: `10000000000000000000` (10 tokens with 18 decimals)
    - Wallet: Use `0xF618AbF...` to deposit.
  - **Withdraw 5 tokens**:
    - Function: `withdraw(uint256 _amount)`
    - Input: `5000000000000000000` (5 tokens)
    - Wallet: Same as depositor.

## 2. RewardDistributor
- **Description**: Distributes rewards to users.
- **Examples**:
  - **Distribute 2 tokens to a user**:
    - Function: `distribute(address _user, uint256 _amount)`
    - Input: `_user: 0x57BB90...`, `_amount: 2000000000000000000` (2 tokens)
    - Wallet: Owner (`0xF618AbF...`) only.
  - **Claim Reward**:
    - Function: `claimReward()`
    - Input: None
    - Wallet: Recipient (e.g., `0x57BB90...`).

## 3. VotingSystem
- **Description**: Allows users to vote on proposals.
- **Examples**:
  - **Vote Yes**:
    - Function: `vote(bool _vote)`
    - Input: `true`
    - Wallet: `0xF618AbF...` (first-time voter).
  - **Vote No**:
    - Function: `vote(bool _vote)`
    - Input: `false`
    - Wallet: `0x57BB90...` (different voter).

## 4. StakeManager
- **Description**: Manages staking of tokens.
- **Examples**:
  - **Stake 10 tokens**:
    - Function: `stake(uint256 _amount)`
    - Input: `10000000000000000000` (10 tokens)
    - Wallet: `0xF618AbF...`.
  - **Unstake 5 tokens**:
    - Function: `unstake(uint256 _amount)`
    - Input: `5000000000000000000` (5 tokens)
    - Wallet: Same as staker.

## 5. AuctionHouse
- **Description**: Runs a simple auction.
- **Examples**:
  - **Place a 2 token bid**:
    - Function: `bid(uint256 _amount)`
    - Input: `2000000000000000000` (2 tokens)
    - Wallet: `0xF618AbF...`.
  - **Outbid with 3 tokens**:
    - Function: `bid(uint256 _amount)`
    - Input: `3000000000000000000` (3 tokens)
    - Wallet: `0x57BB90...` (before auction ends).

## How to Interact
- Use **basescan.org** (mainnet) to call functions via the Write Contract tab.
- Ensure wallets have ETH for gas fees (~$5-10 per transaction).
- Replace example addresses (e.g., `0x57BB90...`) with your actual wallet addresses.

## Notes
- All token amounts use 18 decimals (e.g., 1 token = 1000000000000000000).
- Test with multiple wallets to maximize activity for Base Builder Rewards.

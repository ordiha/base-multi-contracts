# Usage Examples for Base Multi Contracts

This guide provides examples for interacting with the contracts deployed in the Base Multi Contracts repository on Base Sepolia or mainnet.

## 1. TokenVault
- **Description**: Stores token deposits.
- **Examples**:
  - **Deposit 10 tokens**:
    - Function: `deposit(uint256 _amount)`
    - Input: `10000000000000000000` (10 tokens with 18 decimals)
    - Wallet: Use `0xF618AbF...`.
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

## 6. LendingPool
- **Description**: Manages lending of tokens.
- **Examples**:
  - **Borrow 1 token**:
    - Function: `borrow(uint256 _amount)`
    - Input: `1000000000000000000` (1 token)
    - Wallet: `0xF618AbF...`.
  - **Repay 0.5 tokens**:
    - Function: `repay(uint256 _amount)`
    - Input: `500000000000000000` (0.5 tokens)
    - Wallet: Same as borrower.

## 7. NFTMarketplace
- **Description**: Allows NFT purchases.
- **Examples**:
  - **Buy NFT**:
    - Function: `buyNFT()`
    - Input: None
    - Wallet: `0xF618AbF...` (creates token ID 0).
  - **Buy Another NFT**:
    - Function: `buyNFT()`
    - Input: None
    - Wallet: `0x57BB90...` (creates token ID 1).

## 8. Crowdfunding
- **Description**: Collects funds toward a goal.
- **Examples**:
  - **Fund 2 tokens**:
    - Function: `fund(uint256 _amount)`
    - Input: `2000000000000000000` (2 tokens)
    - Wallet: `0xF618AbF...`.
  - **Fund 1 token**:
    - Function: `fund(uint256 _amount)`
    - Input: `1000000000000000000` (1 token)
    - Wallet: `0x57BB90...`.

## How to Interact
- Use **basescan.org** (mainnet) or **sepolia.basescan.org** (Sepolia) to call functions via the Write Contract tab.
- Ensure wallets have ETH for gas fees (~$5-10 on mainnet, ~0.01 on Sepolia).
- Replace example addresses (e.g., `0x57BB90...`) with your actual wallet addresses.
- Space transactions (1 every 15-30 minutes) to avoid flagging.

## Notes
- All token amounts use 18 decimals (e.g., 1 token = 1000000000000000000).
- Test with 3+ wallets to maximize activity for Base Builder Rewards.

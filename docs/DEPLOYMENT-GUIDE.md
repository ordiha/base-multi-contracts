# Deployment Guide for Base Multi Contracts

This guide outlines the steps to deploy the Base Multi Contracts on Base Sepolia or Base mainnet for the Base Builder Rewards campaign.

## Prerequisites
- MetaMask wallet with Base Sepolia (RPC: https://sepolia.base.org, Chain ID: 84532) or Base mainnet (RPC: https://mainnet.base.org, Chain ID: 8453).
- Testnet ETH from faucet.base.org (Sepolia) or real ETH (mainnet).
- Remix IDE (remix.ethereum.org).

## Deployment Steps
1. **Open Remix**:
   - Navigate to remix.ethereum.org and create a new folder `contracts/`.
2. **Add Contracts**:
   - Upload or create: `TokenVault.sol`, `RewardDistributor.sol`, `VotingSystem.sol`, `StakeManager.sol`, `AuctionHouse.sol`, `LendingPool.sol`, `NFTMarketplace.sol`, `Crowdfunding.sol`.
3. **Compile**:
   - Select Solidity 0.8.20, compile all contracts.
4. **Configure MetaMask**:
   - Switch to Base Sepolia or mainnet, connect wallet.
5. **Deploy Each Contract**:
   - **TokenVault**: No args, deploy.
   - **RewardDistributor**: No args, deploy.
   - **VotingSystem**: No args, deploy.
   - **StakeManager**: No args, deploy.
   - **AuctionHouse**: No args, deploy.
   - **LendingPool**: No args, deploy.
   - **NFTMarketplace**: No args, deploy.
   - **Crowdfunding**: Input goal (e.g., `10000000000000000000` for 10 tokens), deploy.
   - Approve each transaction (~0.01 ETH gas per deploy on Sepolia, ~$5 on mainnet).
6. **Verify on Basescan**:
   - For Sepolia: sepolia.basescan.org, verify each contract with source code.
   - For mainnet: basescan.org, verify each contract.

## Testing
- Use the Write Contract tab on Basescan to call functions (e.g., `deposit`, `bid`) with multiple wallets.
- Space transactions (1 every 15-30 minutes) to avoid flagging.

## Notes
- Deploy on Sepolia for free activity.
- Use mainnet for higher impact if you have ETH, but limit to 2-3/hour.
- Update README.md with deployed addresses (e.g., "TokenVault: 0xVault...").
- 

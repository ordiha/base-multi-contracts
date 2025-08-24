// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RewardDistributor {
    mapping(address => uint256) public rewards;
    address public owner;

    event RewardClaimed(address user, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function distribute(address _user, uint256 _amount) external {
        require(msg.sender == owner, "Only owner");
        rewards[_user] += _amount;
    }

    function claimReward() external {
        uint256 amount = rewards[msg.sender];
        require(amount > 0, "No reward");
        rewards[msg.sender] = 0;
        emit RewardClaimed(msg.sender, amount);
    }
}

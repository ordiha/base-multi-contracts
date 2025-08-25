// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StakeManager {
    mapping(address => uint256) public stakes;
    uint256 public totalStaked;
    address public owner;

    event Staked(address user, uint256 amount);
    event Unstaked(address user, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function stake(uint256 _amount) external {
        stakes[msg.sender] += _amount;
        totalStaked += _amount;
        emit Staked(msg.sender, _amount);
    }

    function unstake(uint256 _amount) external {
        require(stakes[msg.sender] >= _amount, "Insufficient stake");
        stakes[msg.sender] -= _amount;
        totalStaked -= _amount;
        emit Unstaked(msg.sender, _amount);
    }
}

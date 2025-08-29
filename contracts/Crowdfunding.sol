// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Crowdfunding {
    uint256 public goal;
    uint256 public totalRaised;
    mapping(address => uint256) public contributions;

    event Funded(address contributor, uint256 amount);

    constructor(uint256 _goal) {
        goal = _goal;
    }

    function fund(uint256 _amount) external {
        contributions[msg.sender] += _amount;
        totalRaised += _amount;
        emit Funded(msg.sender, _amount);
    }
}

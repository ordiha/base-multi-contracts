// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TokenVault {
    mapping(address => uint256) public deposits;
    address public owner;

    event Deposited(address user, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 _amount) external {
        deposits[msg.sender] += _amount;
        emit Deposited(msg.sender, _amount);
    }

    function withdraw(uint256 _amount) external {
        require(deposits[msg.sender] >= _amount, "Insufficient deposit");
        deposits[msg.sender] -= _amount;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LendingPool {
    mapping(address => uint256) public loans;
    uint256 public interestRate = 10; // 10% interest

    event LoanIssued(address borrower, uint256 amount);
    event LoanRepaid(address borrower, uint256 amount);

    function borrow(uint256 _amount) external {
        loans[msg.sender] += _amount;
        emit LoanIssued(msg.sender, _amount);
    }

    function repay(uint256 _amount) external {
        require(loans[msg.sender] >= _amount, "Insufficient loan");
        loans[msg.sender] -= _amount;
        emit LoanRepaid(msg.sender, _amount);
    }
}

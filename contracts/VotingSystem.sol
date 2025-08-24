// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VotingSystem {
    mapping(address => bool) public voters;
    uint256 public yesVotes;
    uint256 public noVotes;

    event VoteCast(address voter, bool vote);

    function vote(bool _vote) external {
        require(!voters[msg.sender], "Already voted");
        voters[msg.sender] = true;
        if (_vote) yesVotes++;
        else noVotes++;
        emit VoteCast(msg.sender, _vote);
    }
}

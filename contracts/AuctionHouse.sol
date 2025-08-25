// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AuctionHouse {
    uint256 public auctionEnd;
    address public highestBidder;
    uint256 public highestBid;
    address public owner;

    event NewHighestBid(address bidder, uint256 amount);

    constructor() {
        owner = msg.sender;
        auctionEnd = block.timestamp + 1 days;
    }

    function bid(uint256 _amount) external {
        require(block.timestamp < auctionEnd, "Auction ended");
        require(_amount > highestBid, "Bid too low");
        highestBidder = msg.sender;
        highestBid = _amount;
        emit NewHighestBid(msg.sender, _amount);
    }
}

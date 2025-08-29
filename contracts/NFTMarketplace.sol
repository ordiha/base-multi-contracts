// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NFTMarketplace {
    mapping(uint256 => address) public nftOwners;
    uint256 public nextId;

    event NFTPurchased(address buyer, uint256 tokenId);

    function buyNFT() external {
        nftOwners[nextId] = msg.sender;
        emit NFTPurchased(msg.sender, nextId);
        nextId++;
    }
}

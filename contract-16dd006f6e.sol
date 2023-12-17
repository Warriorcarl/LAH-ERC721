// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract Lah is ERC721, ERC721Burnable, Ownable {
    uint256 private _nextTokenId;

    constructor(address initialOwner) ERC721("Lah", "LAH") Ownable(initialOwner) {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://d391b93f5f62d9c15f67142e43841acc.ipfscdn.io/ipfs/bafybeid6czbuuqdiz3hcm3e5wfhokn6abfry24nsfc5r5thcha2y35unve/ehh.png";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}

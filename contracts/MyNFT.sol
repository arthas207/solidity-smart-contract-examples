// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage {
    uint public counter;
    constructor() ERC721("CryptoLeekNFT","CLNFT"){
        counter = 0;
    }

    function createNFTs(string memory tokenURI) public returns (uint){
        uint tokenId = counter;
        _safeMint(msg.sender,tokenId);
        _setTokenURI(tokenId,tokenURI);
        counter++;
        return tokenId;
    }

    function burnNFT(uint256 tokenId) public virtual {
        require(_isApprovedOrOwner(msg.sender,tokenId),"You are not the owner nor approved!");
        super._burn(tokenId);
    }


}

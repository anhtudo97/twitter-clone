// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ProfileImageNfts is ERC721, Ownable {
    using Counters for Counters.Counter;
    using Strings for uint256;

    Counters.Counter _tokenIds;
    mapping(uint256 => string) _tokenURIs;

    struct RenderToken {
        uint256 id;
        string uri;
        string space;
    }

    constructor() ERC721("ProfileImageNfts", "PIN") {}

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(_exists(tokenId), "URI not exist on that ID");
        string memory _RUri = _tokenURIs[tokenId];
        return _RUri;
    }
}

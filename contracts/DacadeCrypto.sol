// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;
import "../client/node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "../client/node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract DacadeCrypto is ERC721, ERC721Enumerable {
    string[] public dacaders;
    mapping(string => bool) _dacaderExist;

    constructor() ERC721("DacadeCrypto", "celo") {}

    function mint(string memory dacade) public {
        require(!_dacaderExist[dacade]);
        dacaders.push(dacade);
        uint256 _id = dacaders.length - 1;
        _mint(msg.sender, _id);
        _dacaderExist[dacade] = true;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}

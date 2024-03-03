// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract Container is ERC721 {
    address private _owner;
    address public admin;

    uint public maxSupply;
    uint public totalSupply;
    bool public isClosed;
    

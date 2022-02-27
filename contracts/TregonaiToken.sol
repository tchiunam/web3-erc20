// contracts/TregonaiToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TregonaiToken is ERC20 {
    // wei
    constructor(uint256 initialSupply) ERC20("TregonaiToken", "TGN") {
        _mint(msg.sender, initialSupply);
    }
}

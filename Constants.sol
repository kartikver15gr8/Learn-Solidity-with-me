// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Constants {
    address public constant myAddress = 0x09EffbFebbB7eaD56daB6aECdD951205360b4540;
        // 21442 
    uint256 public constant myUint = 746;
        // 21371 
}


contract variable {
    address public myAddress = 0x09EffbFebbB7eaD56daB6aECdD951205360b4540;
    // 23575 is the execution cost when we dint make it constant (2,133 more)
    uint256 public myUint = 746;
    // 23471 is the execution cost when we dint make it constant (2,154 more)
}

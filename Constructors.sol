// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Constructor {
    address public owner;
    uint256 public a;

    /* Constructors are special types of functions
       which execute ones only at the time when the 
       contract is deployed!
       They allows you to initialize your state variables*/ 
    

    constructor(uint256 _a){
        owner = msg.sender; // This will give the address of the person who'll deploy this contract
        // owner == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        a = _a;
    } 

}

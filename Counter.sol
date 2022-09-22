// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    // Code goes here...
    uint256 public count = 2;
    // uint256 public num;
    uint256 public num = 10;
    string notice = "Hey there! I'm learning Solidity and will be diving into Web3";

    // constructor() public {
    //     num = 10;
    // }

    // Writing function
    // function getCount() public view returns(uint256) {
    //     return count;
    // }
    // function getNum() public view returns(uint256) {
    //     return num;
    // }

    function incrementCount() public {
        count = count + 1;  // We can also write it is count++;
        num = num * 10;
    }

}
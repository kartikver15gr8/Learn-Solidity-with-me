// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter{
    uint256 public count;

    function increment() public {
        count++;
    }
    function decrement() public {
        count--;
    }
}

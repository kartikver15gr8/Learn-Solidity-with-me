// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{
    int public count;

    function increment() public {
        count++;
    }
    function decrement() public {
        count--;
    }
}

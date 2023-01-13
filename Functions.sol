// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsIntro{


    uint256 public num;
    
    function add(uint256 a, uint256 b) public pure returns(uint256){    // This function will only cost gas once, which is at the time when we'll deploy it. 
        return a+b;                                                     // After deploying, this won't cost us gas the the function is read only and as we're
    }                                                                   // not modifying the state of any variable.

    function sub(uint256 a, uint256 b) public pure returns(uint256){
        return a-b;
    }

    function numVal(uint256 _num) public returns(uint256){
        num = _num;
        return num;
    }

}

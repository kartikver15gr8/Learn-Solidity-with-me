// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse{
    function conditonals(uint256 _a) public pure returns(uint256){
        if(_a>10){
            return _a;
        }else if(_a == 10){
            return 0;
        }else{
            return 1;
        }
    }

    // conditionals using ternary operators
    function condition(uint256 _a) public pure returns(uint256){
        // if(_a > 10 ){
        //     return 1; 
        // }else{
        //     return 0;
        // }

        // The above conditional can be written as below, using ternary
        return _a>10? 1:0;
    }
}

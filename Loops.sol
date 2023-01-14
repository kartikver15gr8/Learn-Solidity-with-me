// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loops {
    function loop() public pure {
        for (uint256 i = 1; i <= 5; i++){
            // code
        }

        uint256 a = 0;
        while(a<=10){
            a++;
        }
    }

    function sum(uint256 _num) public pure returns(uint256){
        uint256 a;
        for(uint256 i = 0; i <= _num; i++){
            a += i;
        }
        return a;   // will return the sum of numbers till '_num'
    }
}

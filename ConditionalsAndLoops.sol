// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract{
    // Conditionals
    // Loops


    address public owner;
    
    uint256[] public numbers = [1, 4, 3,4,6,24,65,6,54];

    constructor(){
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint256){
        uint count = 0;
        for(uint i = 0; i< numbers.length; i++){
            if(isEven(numbers[i])){
                count++;
            }
        }
        return count;
    }

    function isEven(uint256 _number) public view returns(bool){
        if(_number % 2 ==0){
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns (bool) {
        return(msg.sender == owner);
    }
    

}
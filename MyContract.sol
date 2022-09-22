// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    // State Variables
    uint256 myUint = 100;
    uint256 public num = 200;
    int integer = -1;
    int integer2 = 9;

    string public myString = "Hey there!! I'm deep diving into Blockchain and Web3";
    bytes32 public myBytes32 = "Hello world!";

    address public myAddress = 0x51CC8a8fC56446193Ad2A60844692531D5D2ab4E;

    struct MyStruct {
        uint256 myNum;
        string Str;
    }

    MyStruct public a = MyStruct(10, "Kartikey");


    // Local Variables
    function getValue() public pure returns(uint256){
        uint256 value = 10;
        return value; 
    }
}
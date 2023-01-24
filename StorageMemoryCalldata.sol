// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract StorageMemoryCalldata {

    struct MyStruct{
        uint256 num;
        string text;
    }

    mapping(address => MyStruct) public myMap;
    MyStruct[] public myStructs;

    function test(uint256[] calldata x, uint256[] calldata y) public returns(uint256[] memory){
        myMap[msg.sender] = MyStruct({num:23, text:"Hello"});
        MyStruct storage a = myMap[msg.sender];
        a.text = "Hermione Granger";

        MyStruct memory b = myMap[msg.sender];
        b.num = 3323;

        _internal(y);

        uint256[] memory arr;
        arr[0] = 12;
        return arr;
    }

    function _internal(uint256[] calldata y) private {
        uint256 x = y[0];
    }
    
}

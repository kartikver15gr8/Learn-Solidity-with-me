// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract FirstArray{
    /* In this program we'll gonna learn about 'Arrays'
       In Solidity programming.*/

    uint256[] public UintArray = [1,3,5];
    string[] public StrArray = ["Hello", "World", "!"];
    string[] public values;

    // We can also assign 2-D Arrays

    string[][] public myTwoDArray = [["Hello"], ["Peter!"]];

    function addValueToValuesArray(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns(uint256){
        return values.length;
    }
}
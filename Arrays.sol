``` Solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {
    uint256[] public numDynamic;
    uint256[4] public numFixed; // This will initialize an array of size 4;
    uint256[4] public anotherFix = [1,3,4,5];

    function addElem(uint256 _elem) public {    // We can add elements to the array by this function
        numDynamic.push(_elem);
    }

    function deleteElem(uint256 _index) public { 
    /*  We can delete elements by specifying the index of that element. 
        Delete method deletes the element and put '0' at its place
        which means if we delete the element at index 2 of array "[0,2,4,5,52]",
        we'll get "[0,2,0,5,52]"
    */
        delete numDynamic[_index];  
    }

    function popElem() public {
    /*  "pop()" removes the last element of the array.
        which means if we perform a pop operation on array "[0,2,4,5,52]",
        we'll get "[0,2,4,5]"
    */
        numDynamic.pop();
    }

    function pushElem(uint256 _elem) public {
    /*  "push()" adds an element to the array. which means if we push '9' in 
        array "[0,2,4,5,52]", we'll get "[0,2,4,5,52,9]"
    */
        numDynamic.push(_elem);
    }

    function lenArr() public view returns(uint256) {
        return numDynamic.length;   // This will return the length of the array.
    }

    function getArray() public view returns(uint256[] memory){
        return numDynamic;  // This will return the whole array
    }
}
```

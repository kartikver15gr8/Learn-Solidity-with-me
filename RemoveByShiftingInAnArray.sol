// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract RemoveFromArr {

    uint256[] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    function removeElemAtIndex(uint256 _index) public {
        require(_index < arr.length, "Index out of bounds");
        for(uint256 i =_index; i < arr.length - 1; i++){
            arr[i] = arr[i+1];
        }

        arr.pop();
    }

    function getArray() public view returns(uint256[] memory){
        return arr;
    }

}

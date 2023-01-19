// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemoveElemByReplacingLast {
    uint256[] public arr = [1, 2, 3, 4, 5, 6];

    function removeElem(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    // function test() external {
    //     arr = [1,2,3,4,5];

    //     removeElem(2);
    // }

    function getArray() public view returns (uint256[] memory) {
        return arr;
    }
}

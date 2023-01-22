// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage {
    SimpleStorage public newContract;
    SimpleStorage[] public contracts;
    function createNewContract() public {
        newContract = new SimpleStorage();
        contracts.push(newContract);
    }

    function getContracts() public view returns(SimpleStorage[] memory){
        return contracts;
    }

    // Storing an uint value to the created array
    function storeVal(uint256 _index, uint256 _number) public {
        SimpleStorage smContract = contracts[_index];
        smContract.store(_number);
    }

    // Getting the value stored in the contract
    function getValue(uint256 _index) public view returns(uint256){
        return contracts[_index].retrieve();
    }
    
}

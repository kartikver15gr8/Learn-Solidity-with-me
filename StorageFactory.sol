// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorageTwo.sol";

contract StorageFactory{
    // SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArr;
    function createSimpleStorage() public {
        // simpleStorage = new SimpleStorage();
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI => Application Binary Interface
        
        // SimpleStorage simpleStorage = simpleStorageArr[_simpleStorageIndex];
        // simpleStorage.store(_simpleStorageNumber);

        /* Instead of the above two lines we can also write it as below: */
        simpleStorageArr[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function getStore(uint256 _simpleStorageIndex) public view returns(uint256){
        // SimpleStorage simpleStorage = simpleStorageArr[_simpleStorageIndex];
        // return simpleStorage.retrieve();]

        /* Instead of writing above two lines to retrieve stored values in smart contract
        we can do it like as shown below:*/
        return simpleStorageArr[_simpleStorageIndex].retrieve();
    }
}

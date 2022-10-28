
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorageTwo.sol";

contract ExtraStorage is SimpleStorageTwo {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public override {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber + 10;
    } 
}


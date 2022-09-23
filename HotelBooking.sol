// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    /* This Smart Contract gonna show what are Modifiers,
    Visibility, Events, Enums, and how to make Ether Payments*/

    // After payment done successfully we need to change
    // The status of hotel rooms from Vacant to Occupied
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        // Check hotel room status
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }
    modifier costs(uint256 _amount) {
        // Check price!
        require(msg.value >= _amount, "Not enough ether provided.");
        _;

    }   
    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        // owner.transfer(msg.value); 
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}
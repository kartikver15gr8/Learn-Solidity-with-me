// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Enums {
    enum Status {
        None, 
        Cancelled,
        Completed,
        Rejected,
        Shipped,
        Pending
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    function getStatus() public view returns(Status) {
        return status;
    } 

    function setStatus(Status _status) public {
        status = _status;
    }
    
}

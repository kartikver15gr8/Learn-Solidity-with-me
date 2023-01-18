// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    
    modifier checkOwner() {
        require(msg.sender == owner, "not owner!");
        _;
    }

    function setOwner(address _newOwner) public checkOwner {
        require(_newOwner != address(0), "Invalid Address");
        owner = _newOwner;
    }
    
    function canOnlyCalledByOwner() public checkOwner {
        // This function can only be called by the owner of the contract.
    }
    function canCalledByAnyone() public {
        // This function can called by anyone.
    }
}

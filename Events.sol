// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events {
    event Log(string message, uint256 val);
    event IndexedLog(address indexed sender, uint256 val);

    function test() public {
        emit Log("Hello! this is a message.", 123);
    }

    event Message(address indexed _from, address indexed _to, string message);
    
    function sendMessage(string calldata _message) public {
        emit Message(msg.sender, _to, _message);
    }
}

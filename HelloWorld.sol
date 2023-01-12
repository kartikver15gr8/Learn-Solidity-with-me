// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityHelloWorld{
    string public phrase;

    string[] public arr;
    function addPhrase(string memory _phrase) public returns(string memory){
        phrase = _phrase;
        return phrase;
    }

    function arrPh(string memory _phrase) public returns(string[] memory){
        phrase = _phrase;
        arr.push(phrase);
        return arr;
    }
}

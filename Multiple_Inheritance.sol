// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract A {
    function message() public pure virtual returns(string memory) {
        return "Hey how you doin, this is the first base contract 'A'";
    }
}

contract B is A {
    function message() public pure virtual override returns(string memory) {
        return "Hey how you doin, this is the 'B' contract that inherits from 'A'";
    }

    function greet() public pure virtual returns(string memory) {
        return "Jai Shri Krishna!";
    }
}

contract C is A, B {
    /* In this function written below, since we're inheriting this 
       Contract from both 'B' and 'A' hence we'll use the 'override'
       keyword along with the parenthesis i.e, override(), 
       under which we'll put the names of the contract from which
       we're inheriting. In this case those are 'A' and 'B'
       So we'll add 'override(A, B)' to inherti successfully!*/
    
    function message() public pure override(A, B) returns(string memory) {
        return "Hey how you doin, this is the 'C' that inherits from both contract 'A' and Contract 'B'";
    }
}

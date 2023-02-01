// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* In this contract, I'll show you how we can inherit a contract
   to another one. In this example we'll inhert contract "Alpha"
   to the contract "Beta" */

contract Alpha {
    function alphaMinor() public pure virtual returns(string memory) {
        return "Alpha Minor";
    }

    function alphaMajor() public pure virtual returns(string memory) {
        return "Alpha Major";
    }

    function alphaSpecial() public pure virtual returns(string memory) {
        return "Alpha Special";
    }
}


contract Beta is Alpha {
    function alphaMinor() public pure override returns(string memory) {
        return "Beta Minor";
    }

    function alphaMajor() public pure virtual override returns(string memory) {
        return "Beta Major";
    }
}

contract Gamma is Beta {
    function alphaMajor() public pure override returns(string memory) {
        return "Gamma Rays turned Banner into Hulk!";
    }
}

// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract FunctonOutputs {
    // We can return multiple outputs in functions of Solidity
    function returnMul() public pure returns(string memory, uint256){
        return ("Hey!", 97);
    }

    // Returning multiple values with an assigned name!
    // By doing so we saves a lil bit of gas!
    function assigningThenReturning() public pure returns(string memory str, uint256 kar){
        str = "Hey!";
        kar = 97;
    }

    function destructingAssign() public pure {
        (string memory x, uint256 b) = returnMul();
    }
}

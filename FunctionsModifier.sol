// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsModifier{
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) public {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;  // This "_" tells the solidity to call the function that the modifier wraps.

    }

    function inc() public whenNotPaused {   // we added "whenNotPaused" modifier in this function which will let the function work only when the contract is not paused.
        count++;        // This will only increment when the contract is not paused.
    }

    function dec() public whenNotPaused {
        count--;
    }
}

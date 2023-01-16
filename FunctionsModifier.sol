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

    modifier checkInput(uint256 _a) {
        require(_a > 100, "a <= 100");
        _;
    }

    function inc(uint256 _a) public whenNotPaused checkInput(_a) {   // we added "whenNotPaused" modifier in this function which will let the function work only when the contract is not paused.
        count += _a;        // This will only increment when the contract is not paused.
    }

    function dec(uint256 _a) public whenNotPaused checkInput(_a){
        count -= _a;
    }

    modifier poo() {
        count += 100;
        _;
        count *= 2;
    }

    function foo() public poo{
        count += 1;
    }
    
}

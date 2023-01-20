// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract IterableMappings {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint256 _val) public {
        balances[_key] = _val;

        if(!inserted[_key]) {
            keys.push(_key);
            inserted[_key] = true;
        }
    }
    
    function sizeOfMapping() public view returns(uint256) {
        return keys.length; 
    }

    // We can also access the "key-value" of our "balances" mapping
    function keyValue(uint256 _index) public view returns(uint256) {
        return balances[keys[_index]];
    }
}

/* Get funds from users
   Withdraw funds
   Set a minimum funding value in USD 
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    // Just because we want to have transactions in our currency 
    // Hence we've made this public variable 'minimumUSD' that will
    // Tell the minimum amount in Dollar (USD) to be sent in the 'fund' function 
    // instead of amount in ETH!
    uint256 public minimumUSD = 50 * 1e18;
    // The below function is to send ETH

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;
    
    address public owner; 

    constructor(){
        owner = msg.sender;
    }

    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?

        // require(msg.value > 1e18, "Didn't send enough!");   // 1e18 = 1 * 10 ** 18 = 1000000000000000000
        require(msg.value.getConversionRate() >= minimumUSD, "Didn't send enough!");

        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;

    }

    // The below function is to withdraw ETH
    function withdraw() public onlyOwner {
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // Reset the array
        funders = new address[](0);
        // Actually withdraw the funds

        // // Transfer
        // payable(msg.sender).transfer(address(this).balance);
        // // Send
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send failed!");
        // // Call
       (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
       require(callSuccess, "Call failed!");

    }

    modifier onlyOwner {
        require(msg.sender == owner, "Sender is now the owner!");
        _;      // This "_" tells the compiler to execute the rest code after the above line in the modifier.
    }
}

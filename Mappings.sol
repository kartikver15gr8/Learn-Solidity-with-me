// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Mappings{
    // Mappings
    /* The below is the syntax of defining mapping where
       'key' we write the datatype of the key, and in 'value' we
       write the datatype of values that those 'keys' will store */

    // mapping(key => value) name;

    mapping(uint256 => string) public myMapping;
    mapping(uint256 => Book) public books;

    /* To create 'Two-Dimensional' Mappings
       we can do as shown below, and we'll be using
       the above 'books' mapping to put under the mapping 
       we're going to assign.*/
    
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        myMapping[1] = "IronMan";
        myMapping[2] = "Thor";
        myMapping[3] = "Hulk";
        myMapping[4] = "Wanda";
        myMapping[5] = "Dr Strange";
        myMapping[6] = "Captain America";
    }

    function addBook(uint256 _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);  
    }
    function addmyBooks(uint256 _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);  
    }




}


// Another example


contract Mappings {
    // Mappings are just like dictionary in python.
    mapping(string => uint256) public luckyNum;

    struct Luck{
        string name;
        uint256 num;
    }
    
    Luck[] public arr;

    function addKeyPairs(string memory _name, uint256 _num) public {
        arr.push(Luck(_name, _num));
    }

    function getArray() public view returns(Luck[] memory){
        return arr;
    }

    
}

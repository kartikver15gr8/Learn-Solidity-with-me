// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;  // At the top we write the solidity version we want to use the latest version is 0.8.12
// To define our contract we use the keyword "contract" that tells the solidity compiler that from that keyword we are writing contract
contract SimpleStorage{
    // There are some common datatypes in Solidity!
    // boolean, uint, int, address, bytes
    // boolean is the datatype that stores boolean value like true or false
    // uint is a datatype that indicates positive whole numbers in other words we can say An unsigned integer, declared with the uint keyword, is a value data type that must be non-negative; that is, its value is greater than or equal to zero.
    // int is a datatype that stores integer values
    // address is a datatype that stores address like the address of our metamask wallet or we can say that an address value type is specifically designed to hold up to 20Byte, or 160 bits, which is the size of an Ethereum address. Solidity actually offers two address value types: address and address payable . The difference between the two is that address payable can send and transfer Ether.
    // In Solidity, byte refers to 8-bit signed integers. Everything in memory is stored in bits with binary values 0 and 1. The bytes value type in Solidity is a dynamically sized byte array. It is provided for storing information in binary format. Since the array is dynamic, its length can grow or shrink.

    /* For more knowledge about this and other concepts
       refer the documentation of Solidity!😎 */

    // bool hasFavoriteNumber = true; 
    // uint256 favoriteNumber = 892;       // Here we written 256 after uint which tells that the uint value that has to be stored in the uint datatype can be upto 256 bits. We can also use uint32 to assign uint values upto 32 bits and if we don't use anything then the compiler automatically takes it as uint256
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myWalletAddress = 0x51CC8a8fC56446193Ad2A60844692531D5D2ab4E;
    // bytes32 favoriteBytes = "cat"; 

    uint256 favoriteNumber;     // If we only just initialize the uint and don't provide any value then it will automatically get initialized to zero.

    /* Now let's create a function in Solidity */

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        retrieve();
    }
    
    // function add() public view pure returns (uint256){ss
    //     return (2+7);
    // }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    // function add() public view returns (uint256){
    //     return (favoriteNumber+2);
    // }
    
    /* After compilation and deploy of this smart contract
    This Smart Contract is deployed on 0xd9145CCE52D386f254917e481eB44e9943F39138
    address */ 

    
    People public person = People({favoriteNumber:7,name:"Kartikey"});

    struct People{
        uint256 favoriteNumber;
        string name;
    }
    /*We can make array in Solidity as shown below*/

    People[] public people;

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber,name:_name});
        people.push(People(_favoriteNumber,_name));
    }
    
    

}


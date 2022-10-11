// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;     // Here we used '^' to specify that we're okay with any version of solidity greater than 0.8.0 and above.

// pragma solidity >=0.8.0<0.8.9;       We can also specify versions by doing this when we need our contract version in range.

contract SimpleStorage{
    // There are a some data types in solidity: 
    /* boolean, uint, int, address, bytes*/    
    bool hasFavoriteNumber = true;
    string public ticketPrice = "89k";
    string public flightClass = "Business";
    string public favFlight = "Lufthansa";
    string public favoritePlace = "Himalaya";   // We made it public as we want to make it visibility as public or we want to get what value we've assigned it using the function written below.
    uint256 public seats = 2;
    address myAddress = 0x09EffbFebbB7eaD56daB6aECdD951205360b4540;
    bytes32 favBytes = "cat";
    int256 num = 8439;

    function store(uint256 _seats, string memory _favoritePlace, string memory _favFlight, string memory _ticketPrice, string memory _flightClass) public {
        seats = _seats;
        flightClass = _flightClass;
        ticketPrice = _ticketPrice;
        favoritePlace = _favoritePlace;
        favFlight = _favFlight;
    }

    // view
    function retrieve() public view returns(uint256){
        return seats;
    }

    // pure 
    // function sum() public pure returns(uint256){
    //     return 3+1;
    // }
    /* 
       In our earlier Smart contract we saw how can we store a single data
       using different datatypes, But what if we want to store a sequence of data
       using a single datatype or variable. For that we can use the below concepts.
    */

    // People public person = People({favNumber:15, name:"Kartik"});
    // struct
    struct People {
        uint256 favNumber;
        string name;
    }

    // Arrays
    /* We declare array as => datatype[] visibility name;*/
    // uint256[] public favNumbers;
    People[] public people;

    /*We created a function below to add people in the 
      array declared above (people array). For this we used "push" function that 
      creates a new person and add it in the array. 
    */
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));     // We used push to add people in array.
        // People memory newPerson = People({favNumber:_favNumber, name: _name});
        // people.push(newPerson);
    }




    // Mapping

    mapping(string => uint256) public nameToFavNo;

    function addMap(string memory _name, uint256 _favNumber) public {
        nameToFavNo[_name] = _favNumber;
    }

    


    
    
}

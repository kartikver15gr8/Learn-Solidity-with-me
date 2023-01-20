// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Structs {
    struct Computer{
        string graphicCard;
        uint256 RAM;
        string processor;
    }

    Computer[] public computers;
    Computer[] public myComputers;

    mapping(address => Computer[]) public compOwners;

    function addComp() public {
        Computer memory pc = Computer("Nvidea RTX 3080ti", 16, "Intel i9");
        Computer memory pc2 = Computer({graphicCard: "Nvidea GTX 1680ti", RAM:32, processor: "Intel i9"});

        computers.push(pc);
        computers.push(pc2);

        computers.push(Computer("Nvidea RTX 4079", 64, "intel i9"));
    }

    function addPCs(string memory _gpu, uint256 _ram, string memory _processor) public {
        myComputers.push(Computer(_gpu, _ram, _processor));
    }

    function getPCsFromArr(uint256 _index) public view returns(Computer memory){
        return myComputers[_index];
    }

}

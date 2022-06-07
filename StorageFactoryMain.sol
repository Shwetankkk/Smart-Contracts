// SPDX-license-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorageMain.sol";
contract StorageFactory{ 
    SimpleStorageMain[] public simpleStorageArray;
    function createSimpleStorageContract() public {
         SimpleStorageMain simpleStorage =  new SimpleStorageMain(); 
         simpleStorageArray.push(simpleStorage);
         
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        // ABI - Application Binary Interface
        SimpleStorageMain simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);


    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorageMain simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}
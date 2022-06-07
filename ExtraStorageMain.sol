// SPDX-license-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorageMain.sol";
contract ExtraStorage is SimpleStorageMain {

    function store(uint256 _favoriteNumber) public override{
        Favoritenumber = _favoriteNumber + 5;
    }


}
// SPDX-license-Identifier: MIT;
pragma solidity ^0.8.8;

contract testthree{

uint256 public Favoritenumber;
mapping (string => uint256) public nametoFavoriteNumber;

struct People{
    uint256 FavoriteNumber;
    string name;
}

function store(uint256 _favoriteNumber) public{
    Favoritenumber = _favoriteNumber;
}

People[] public people;
function addPeople(string memory _name,uint256 _favoriteNumber) public {
    people.push(People(_favoriteNumber,_name));
    nametoFavoriteNumber[_name] = _favoriteNumber;
}

function retrieve() public view returns(uint256){
    return Favoritenumber;
}











}

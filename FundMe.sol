// SPDX-license-Identifier: MIT
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract FundMe { 

    uint256 public minimumUsd = 50 * 1e18;

    function fund() public payable {
        require(getConversionRate(msg.value) >= minimumUsd, "Zayda bhej bhai"); //1e18 == 1000000000000000000 wei = 1 ETH
    }

    function getPrice() public view returns(uint256) {
        //ABI
        //Address 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
       (,int256 price,,,) = priceFeed.latestRoundData(); // Price of ETH in USD
       return uint256(price *1e10);
        

    }
    function getConversionRate(uint256 ethamount) public view returns (uint256){
        uint256 ethprice = getPrice();
        uint256 ethamountinUsd = (ethprice * ethamount) / 1e18;
        return ethamountinUsd;
       
    }



}
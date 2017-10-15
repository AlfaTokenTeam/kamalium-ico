pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Kamalium is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Kamalium(address _owner)  UpgradeableToken(_owner) {
    name = "Kamalium";
    symbol = "KAM";
    totalSupply = 2000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
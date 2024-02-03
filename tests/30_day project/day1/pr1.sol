// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract test{
    uint public value;
    function getdata(uint _val)public  returns(uint){
      return (  value = _val);
    }
}
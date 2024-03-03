//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract EtherWallet{
    address payable public owner;
    constructor(){
        owner = payable(msg.sender);
    }
    receive()external payable{}
    function withdrawal(uint _amount)public payable {
        require(msg.sender == owner, "Caller is not owner.");
        payable(msg.sender).transfer(_amount);
    }
    function getamount()external view returns(uint ){
        return address(this).balance;
    }
}
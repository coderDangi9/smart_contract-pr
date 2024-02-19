//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract Wallet{
    //How to create ether wallet

    address payable public owner;

    constructor (){
        owner = payable(msg.sender);
    }
    receive()external payable{

    }
    function withdrawal(uint amount)public payable{
        require(msg.sender == owner , "caller is not owner");
        payable(msg.sender).transfer(amount);
        // require(amount > msg.value,"Unsufficent balance .");
        // msg.value -= amount;
    }
    function getbalance()public payable returns(uint){
        return address (this).balance;
    }
    function transferAmount(address addr, uint amount)public payable{
        (bool sent, ) = addr.call{value : amount}("");
        require(sent,"Failed to transfer ether");
    }

}
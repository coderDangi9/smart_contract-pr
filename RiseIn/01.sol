//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract buyBook{
    uint _bookPrice = 0;
    uint amount=100;
    mapping (address => uint)public book;
    function Alice( uint price)payable public  returns(uint){
        amount -=price;
        return amount;
    }
    function bookAddress(book)public payable  returns(uint){

         _bookPrice+= price;
        return _bookPrice;
    }
}
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract parent{
    uint internal sum;
    function setdata()external{
        uint a=3;
        uint b=9;
        sum = a+b;
    }
}
contract child is parent{
    function getdata()external view returns(uint){
        return sum;
    }
}
contract caller{
    //creating child contract object
    child cc = new child();
    // Defining function to call
    //setValue and getValue functions.
    function testInheritance()public returns(uint){
        cc.setdata();
        return cc.getdata();
    }
}
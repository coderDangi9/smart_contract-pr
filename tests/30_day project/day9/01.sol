//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract test{
function foo(uint x) public pure returns(uint){
    if(x<10){
        return 0;
    }
    else if( x<20){
        return 1;
    }
    else{
        return 2;
    }
}
function ternary(uint _x)public pure returns(uint){
    if(_x<10){
        return 1;
    }
    return 2;

//      return _x<10?1:2;
}
}
contract Mapping{
    //mapping from address to uint
    mapping (address =>uint)public myMap;
    function getAddr(address _addr)public view returns(uint){
        //Mapping always return a value
        // If the value was never set, it will returns the default value;
        return myMap[_addr];
    }
    function set(address _addr, uint i)public {
        //update the value public
        myMap[_addr]=i;
    }
    function remove(address _addr)public {
        //Reset the value to the default value
        delete myMap[_addr];
    }
}
contract NestedMapping{
    //Nested mapping(mapping from address to another mapping)
    mapping(address =>mapping(uint => bool))public nested;
    function getAddr(address _addr,uint i)public view returns(bool){
        //you can get value from a nested mapping
        return nested[_addr][i];
    }
    function set(address _addr, uint i, bool _boo)public{
        nested[_addr][i] =_boo;
    }
    function remove(address _addr, uint i)public {
        delete nested[_addr][i];
    }
}
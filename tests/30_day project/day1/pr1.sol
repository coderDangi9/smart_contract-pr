// SPDX-License-Identifier:MIT
pragma solidity^0.8.24;
contract Mapping{
    // mapping(key_type => value_type)
    mapping(address => uint) myMap;

    function get(address _addr)public view returns(uint){
        //return  on default value
        return myMap[_addr];
    }
    function set(address _addr,uint _x)public {
        //return on a value of _x
        myMap[_addr]=_x;
    }
    function remove(address _addr)public {
        delete myMap[_addr];
    }

}
contract NestedMap{
    mapping(address =>mapping(uint =>bool)) nested;

    function getdata(address _addr, uint _x)public view returns(bool){
        return (nested[_addr][_x]);
    }
    function setdata(address _addr, uint _x, bool _bool)public{
        nested[_addr][_x]=_bool;
    }
    function remove(address _addr, uint _x)public {
        delete nested[_addr][_x];
    }
}
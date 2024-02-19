// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
    //Iterable mapping :- You cannot through mapping. so, have an example of how to create an iterable mapping.
    library IterableMapping{
struct Map{
    address[] keys;
    mapping(address => uint) values;
    mapping(address => uint) indexOf;
    mapping(address => bool) inserted;
}
function get(Map storage map, address key)public view returns(uint){
    return map.values[key];
}
function getKeyAtIndex(Map storage map, uint index)public view returns(address){
    return map.keys[index];
}
function size(Map storage map)public view returns(uint){
    return map.keys.length;
}
    }
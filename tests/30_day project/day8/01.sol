//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
//creating contract
contract test1{
    mapping(address => uint)rollNo;
    function getdata(uint _number)public{
        rollNo[msg.sender] = _number;
    }
    function whats_Your_rollno()public view returns(uint){
        return rollNo[msg.sender];
    }
}
contract test2{
    function encode(string memory g)public pure returns(bytes memory){
        return abi.encode(g);
    }
    function encodePacked(string memory g)public pure returns(bytes memory){
        return abi.encodePacked(g);
    }
}
contract test3{
    uint BNumber;
    bytes32 BHashPresent;
    bytes32 BHashPrevious;
    function presentHash()public returns(bytes32){
        BNumber = block.number;
        BHashPresent = blockhash(BNumber);
        return BHashPresent;
    }
    function previousHash()public returns(bytes32){
        BNumber = block.number;
        BHashPrevious = blockhash(BNumber-1);
        return BHashPrevious;
    }
}
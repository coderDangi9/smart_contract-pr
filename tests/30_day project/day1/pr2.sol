// SPDX-License-Identifier:MIT
pragma solidity^0.8.24;
contract Hassing{
    function Hashgen(string memory data)public pure returns(bytes32){
        return (keccak256(abi.encodePacked(data)));
    }
    function Hasedata(string memory _text, uint _x, address _addr)public pure returns(bytes32){
        return (keccak256(abi.encodePacked(_text, _x, _addr)));
    }
    function collision(string memory data1, string memory data2)public pure returns(bytes32){
        return(keccak256(abi.encodePacked(data1,data2)));
    }
}
// Guess the Magic word which include in bytescode.
contract Magicword{
    bytes32  answer =  0xb44f08808177cacab2387fe0840de5512051cfd6a406b66077a263edaf43a8b6;
    function check(string memory _data)public view returns(bool){
        return (keccak256(abi.encodePacked(_data))==answer);
    }
}
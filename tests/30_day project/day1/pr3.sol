// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract signature_verify{
    function hashgenerate(address _addr, uint _amount, string memory _message, uint _nonce)public pure returns(bytes32){
        return keccak256(abi.encodePacked(_addr, _amount, _message, _nonce));
    }
    //sign_verify to used this code \x19Ethereum Signed Message .\n32 +msg

    function sign_hash(bytes32 _data)public pure returns(bytes32){
        return keccak256(
            abi.encodePacked ("\x19Ethereum Signed Message\n32",_data)
        );
    }
    function 
}

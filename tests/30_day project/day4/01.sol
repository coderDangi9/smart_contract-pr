// SPDX-License-Identifier:MIT
pragma solidity 0.8.24;

contract Markelproof{
    //Markel tree is allow to the cryptographically proof that an element
    function Verify(bytes32[] memory proof, bytes32 root, bytes32 leaf, uint index)public pure returns(bool){
        bytes32 hash = leaf;
        for(uint i=0; i<proof.length;i++){
            bytes32 proofElement = proof[i];

            if(index %2 ==0){
                hash = keccak256(abi.encodePacked(hash, proofElement));
            }
            else{
                hash = keccak256(abi.encodePacked(proofElement, hash));
            }
            index = index/2;

        }
        return hash == root;
    }

}
contract TestMerkleProof is Markelproof{
    bytes32[] public hashes;
    constructor(){
        string[4] memory transactions = [
            "alice -> bob",
            "bob -> dave",
            "Carol -> alice",
            "dave -> bob"
        ];
        for(uint i =0; i<transactions.length; i+=1){
            hashes.push(keccak256(abi.encodePacked(transactions[i])));
        }
        uint n = transactions.length;
        uint offset =0;

        while(n>0){
            for(uint i=0; i<n-1;i+=2){
                hashes.push(keccak256(abi.encodePacked(hashes[offset +i], hashes[offset +i+1]))
                );

            }
            offset =offset +n;
            n =n/2;
        }
    }
    function getRoot()public view returns(bytes32){
        return hashes[hashes.length -1];
    }
}
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
contract MultiSignature_Wallet{
    event Deposit(address indexed sender, uint amount, uint balance);
    event submitTransaction(
    address indexed owner,
    uint indexed txIndex,
    address indexed to,
    uint value,
    bytes data
    );
    event ConfirmationTransaction(address indexed owner, uint indexed txIndex);
    event RemoveConfirmation(address indexed owner, uint indexed txIndex);
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);

    address[] public owners;
    mapping (address =>bool)public isOwner;
    uint public numConfirmationRequired;
    struct Transactions{
        address to;
        uint value;
        bytes data;
        uint numConfirmations;
    }
    //Mapping from tx index => owner =>bool
    mapping(uint =>mapping(address => bool))public isConform;
    Transactions[] public transactions;
    modifier onlyOwner(uint _txindex){
        require(isOwner[msg.sender], "not Owner");
        _;
    }
    modifier isExit(uint _txindex){
        require(_txindex <transactions.length, "tx doesn't exit");
        _;
    }
    modifier notExecuted(uint _txindex){
        require(!transactions[_txindex].executed,"tx already executed");
        _;
    }
    modifier notConfirmed(uint _txindex){
        require(!isConform[_txindex][msg.sender],"tx already confirm");
        _;
    }
    }

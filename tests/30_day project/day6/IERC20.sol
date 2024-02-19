//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
interface IERC20{
    function totalSupply()external view returns(uint);
    function balanceOf(address account)external view returns(uint);
    function transfer(address recipient, uint amount) external returns(bool);
    function allowance(address owner, address spender)external returns(uint);
    function approve(address spender, uint amount)external view returns(bool);
    function transferFrom(address sender, address recipient, uint amount)external returns(bool);
    event Transfer(address indexed From, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);

}
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

abstract contract contract_example{
    uint private num1;
    uint public num2;
    string public str;
    constructor(){
        num2 =5;
    }
    function increment(uint value1)private pure returns(uint){
         value1 ++;
        return value1;
    }
    function updatevalue(uint data1)public {
        num1 = data1;
       
    }
    function getValue()public view returns(uint){
        return num1;
    }
    function setstr(string memory _str)public virtual;
    function getstr()public virtual returns(string memory);
}
contract derived_contract is contract_example{
    function setstr(string memory _str)public override{
        str =_str;
    }
    function getstr()public view override returns(string memory){
        return str;
    }
}
contract D{
    function readData()public returns(string memory , uint){
        contract_example c = new derived_contract();
        c.setstr("GreekForGreek");
        c.updatevalue(16);
        return(c.getstr(), c.getValue());
    }
}
//Let's Play gussing game.

pragma solidity ^0.8.24;
contract playGame{
    function generateBytes()public pure returns(bytes memory){
    string memory name= "Sandip_dangi";
        
        bytes memory guess = bytes(name);
        return guess;
    }
}
    
    // function guessGame(bytes memory _guess )public pure returns(bool){
    //    if( _guess == guess){
    //         return true;
    //     }
    //     else{
    //         return false;
    //     }
    // }

  
contract Explict_Conversion{
    function converts()public pure returns(bytes memory){
        string memory str = "Hello World";
        bytes memory b = bytes(str);
        return b;
    }
    function convert_smaller()public pure returns(uint16 ){
        uint32 a =324212;
        uint16 b = uint16(a);
        return b;
    }
}
// SPDX-License-Identifier: GPL-3.0
//It is a SPDX liscense identifier giving some infoormation about the liscense

pragma solidity >=0.7.0 <0.9.0; //it defines solidity version  between 0.7.0 and 0.9.0 which is used by the compiler

contract Storage { //it represents the definition of contract which encapsulates data and function just like class in OOP

    uint256 number; //it is a state varibale which holds a number value


    //This is a transaction as it changes the state
    //It takes one unsigned int as arguments and assign to the state variable number
    //keyword public represents that this function can be called from another contract
    function storeNumber(uint256 num) public {
        number = num;
    }

    //This function read the state of variable from the blockchain and return the value
    //keyword view indicates this doesnot make transaction which means it doesnot change the state
    function retrieveNumber() public view returns (uint256){
        return number;
    }
}

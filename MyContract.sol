pragma solidity ^0.6.0;

contract MyContract{
    //state variables
    //state variable are directly deployed in blockchain
    string public myString="Hello,World!";//it used more amount of gas than bytes32 
    bytes32 public myBytes32="Hello,World";//it used less amount of gas in transaction
    
    //address type comes with two flavors, address and address payable. Both address and address payable stores the 20-byte values, but address payable has additional members, transfer and send.
    //when you deploy a smart contract to the blockchain, one address will be assigned to that contract, by using that address you can identify and call the smart contract
    address public myAddress=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    
    struct myStruct{
        uint myInt;
        string myString;
    }
    
    uint public myUint=1;
    uint256 public myUint256=1;
    uint8 public myUint8=1;
    //unit8 and uint256 show how long number can be.
    int public myInt=1;//signed integers..mean can have negative integers.
    
    //local variables
    function getValue() public pure returns(uint){
     uint value=1;//value is local to function
        return value;
    }
    
    myStruct public Mystruct=myStruct(1,"Hello,World!");
}
pragma solidity ^0.6.0;//which version of solidity we are using
//counter is name of contract
contract Counter{
    uint public count=0;//uint is used for non negative integers//state variable
    
    // constructor() public{//this ids call when we put contacrt in blockchain.
    //     count=0;
    // }
    
    // function getCount() public view returns(uint){
    //     return count;
    // }
    
    function incrementCount() public {
        count++;
    }
}


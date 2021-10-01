pragma solidity ^0.6.0;

contract MyContract2{
    string secret;
    address owner;
    
    modifier onlyOwner(){
    require(msg.sender==owner,"must be owner");\
    _;
    }
    
    constructor(string memory _secret) public{
    secret=_secret;    
    owner=msg.sender;
    }
    
    function getSecret() public view onlyOwner returns(string memory){
        return secret;
    }
}
pragma solidity ^0.6.0;
contract HotelRoom{
    
    enum Statuses{//to check whether room is vacant or occupied
        vacant,
        occupied
    }
    Statuses currentStatus;
    
    event Occupy(address _occupant,uint _value);//declare event name Occupy
    
    address payable public owner;
    
    constructor() public {//whenever smartcontract is deployed ,constructor will called once
        currentStatus=Statuses.vacant;//means room is vacanat
        owner=msg.sender;//msg.sender will be the person who currently connecting with the contract.
    }
    
    
    modifier onlyWhileVacant{
        require(currentStatus==Statuses.vacant,"Currently Ocuupied.");//require will check whether currentStatus==Statuses.vacant condition is true ,if not then it execute string message.
        _;//The function body is inserted where the special symbol "_;" appears in the definition of a modifier. So if condition of modifier is satisfied while calling this function, the function is executed and otherwise, an exception is thrown.
    }
    
    modifier costs(uint _amount){
        require(msg.value>=_amount,"Not Enough Ether provided");
        _;
    }
    
    receive() external payable onlyWhileVacant costs(2 ether){//pay the owner to book hotel.//modifier also added.
         currentStatus=Statuses.occupied;//means now room get book;
        owner.transfer(msg.value);//msg.value is a member of the msg (message) object when sending (state transitioning) transactions on the Ethereum network.
        //transfer is used when we have to send ether.
        emit Occupy(msg.sender,msg.value);//emit the event name Ocuupy.
    }
}
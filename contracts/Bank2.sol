// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract Bank{

struct User{
    address owner;
    uint timecreated;
    uint balance;
}
mapping (address=>User)public bankDatabase;
event balanceAdded(address owner,uint balance,uint timestamp);
event withdrawlDone(address owner ,uint balance,uint timestamp);
modifier minimum{
    require(msg.value>=1 ether,"doesn't follow minimum criterai");  
    _;
}

//account created
function accountCreated() public payable minimum{
bankDatabase[msg.sender].owner=msg.sender;
bankDatabase[msg.sender].balance=msg.value;
bankDatabase[msg.sender].timecreated=block.timestamp;
emit balanceAdded(msg.sender,msg.value,block.timestamp);
}

//balance deposted
function balanceDeposited()public payable {
 bankDatabase[msg.sender].balance+=msg.value;   
emit balanceAdded(msg.sender,msg.value,block.timestamp);
}
function withDrawl()public payable {
 bankDatabase[msg.sender].balance-=msg.value;   
}
function transfarmoney(address reciever)public payable{
    bankDatabase[msg.sender].balance-=msg.value;
    bankDatabase[reciever].balance+=msg.value;
}
}   

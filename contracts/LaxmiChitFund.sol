// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract LaxmichitFundBank{
   
struct User{
uint id;
string name;
uint balance;
}
mapping(uint=>User)public userDatabase;
uint _id=1;
function createAccount(string memory _name,uint _balance )public{
userDatabase[_id].id=_id;
userDatabase[_id].name=_name;
userDatabase[_id].balance=_balance;
_id=_id+1;
}
function depositMoney(uint id, uint depositedMoney )public{
   userDatabase[id].balance+=depositedMoney; 
}
function transfarmoney(uint senderId,uint money,uint reciverId)public {
 userDatabase[senderId].balance-=money;
 userDatabase[reciverId].balance+=money;
}

}
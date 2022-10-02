// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract Property{
struct Student{
    string name;
    uint age;
    string email;
    uint phoneNo;
    uint rollno;
    uint256 timeStamp;
    }
    uint256 _rollno=1;
mapping(uint256=>Student) public StudentDataBase;

event studentAdded(
string name,
string email,
uint timeStamp
);

function addStudent(string memory _name, string memory _email, uint _age, uint _phoneNo ) public{
StudentDataBase[_rollno].name=_name;
StudentDataBase[_rollno].email=_email;
StudentDataBase[_rollno].age=_age;
StudentDataBase[_rollno].phoneNo=_phoneNo;
StudentDataBase[_rollno].rollno=_rollno;
StudentDataBase[_rollno].timeStamp=block.timestamp;
_rollno+=1;  
emit studentAdded(_name,_email,block.timestamp);
}

}
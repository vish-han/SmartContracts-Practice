// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract DonationSystem{
    uint public donation;
    address public Owner;
    
    constructor(){
        donation=0;
    }

    function Donate(uint amount) public payable{

        donation+=amount;
    }
}
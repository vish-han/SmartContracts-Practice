// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract VendingMachine{
    address public Owner;
    mapping(address=>uint) public donutBalances;
constructor(){
    Owner=msg.sender;
    donutBalances[address(this)]=100; 
}
function getVendingMachineBalance() public view returns(uint){
return donutBalances[address(this)]; 
}
function restoct(uint amount) public {
    require(msg.sender==Owner,"Only Owner can restart the Machine");
    donutBalances[address(this)]+=amount;
}
function Purchase(uint256 amount)public payable{
    require(msg.value>amount*2 ether,"You must pay 2 ethers ");
    require(donutBalances[address(this)]>amount,"We Don't have enough donuts ");
    donutBalances[address(this)]-=amount;
    donutBalances[msg.sender]+=amount;
}
}
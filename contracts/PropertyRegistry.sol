// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

 contract propertyRegistry{
     struct Property{
  
         string Address;
         uint area;
         address Owner;
     }
 address Owner=msg.sender;
     mapping(address=>Property)public PropertyDatabase;

     function purchaseProperty(string memory _Address, uint _area)public{
         Owner=msg.sender;
         PropertyDatabase[Owner].Address=_Address;
         PropertyDatabase[Owner].area=_area;
         PropertyDatabase[Owner].Owner=Owner;
     }

 }
 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.0;
 contract Simple{
 
 //public creates a getter function for variable
 uint256 public favNum;
 // similar to class injava or java script
 
 function storeNumber(uint256 _favNum) public virtual {
 // deplotynh a acntract modifies the stae of block chain;
 // er spend gas to do this
     favNum= _favNum;
     
 }
 
 
 
 
 struct people{
     string name;
     uint256 age;
 }
 
 
 mapping(uint=>string) public Map;
 people[] public Array ;
 
 // view and pure function on read the stat e of the function and doesnot modify anythinh on b.ch hence no gas cost
  function show() public view returns (uint256){
      return favNum;
  }
 
 
 function addPeople(uint256 _age, string memory _name) public{
     Array.push(people(_name,_age));
     // people memory newPerson= people({name:_name,age:_age});
     Map[_age]=_name;
 
 // calldata ,memmory storage
 // caldata +> temporarty var s that cannot be modified
 // memmory ==> temporary var can be modified
 //storage==> permanat var that can br modified
        
      
  }
 
 
 
 
 
 }
  
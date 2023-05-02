pragma solidity ^0.5.0;

contract SolidityTest {
   uint age; // variable
   constructor() public {
      age = 60;   
   }
   function checkAge() public view returns(string memory) {
      if( age > 60) {   
        return "60";
      } else {
       return "less than 60";
      }       
      return "default"; 
   }
  
}
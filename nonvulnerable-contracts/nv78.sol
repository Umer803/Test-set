  if (msg.sender != getAddress(keccak256(abi.encodePacked("contract.address", "rocketMerkleDistributorMainnet")))) {
           address withdrawalAddress = rocketStorage.getNodeWithdrawalAddress(_nodeAddress);
           if (msg.sender != withdrawalAddress) {
               require(getBool(keccak256(abi.encodePacked("node.stake.for.allowed", _nodeAddress, msg.sender))), "Not allowed to stake for");
           }
       }
       _stakeRPL(_nodeAddress, _amount);
    }

    /// @notice Explicitly allow or remove allowance of an address to be able to stake on behalf of a node
    /// @param _caller The address you wish to allow
    /// @param _allowed Whether the address is allowed or denied
    function setStakeRPLForAllowed(address _caller, bool _allowed) override external onlyLatestContract("rocketNodeStaking", address(this)) onlyRegisteredNode(msg.sender) {
        setBool(keccak256(abi.encodePacked("node.stake.for.allowed", msg.sender, _caller)), _allowed);
        emit StakeRPLForAllowed(msg.sender, _caller, _allowed, block.timestamp);
    }
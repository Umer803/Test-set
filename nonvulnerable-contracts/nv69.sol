  decreaseTotalRPLStake(rplSlashAmount);
        decreaseNodeRPLStake(_nodeAddress, rplSlashAmount);
        // Mark minipool as slashed
        setBool(keccak256(abi.encodePacked("minipool.rpl.slashed", msg.sender)), true);
        // Emit RPL slashed event
        emit RPLSlashed(_nodeAddress, rplSlashAmount, _ethSlashAmount, block.timestamp);
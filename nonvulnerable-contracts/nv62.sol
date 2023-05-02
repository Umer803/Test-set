  MinipoolDetails memory details;
        details.nodeAddress = minipoolInterface.getNodeAddress();
        details.exists = rocketMinipoolManager.getMinipoolExists(_minipoolAddress);
        details.vacant = minipoolInterface.getVacant();
        details.minipoolAddress = _minipoolAddress;
        details.pubkey = rocketMinipoolManager.getMinipoolPubkey(_minipoolAddress);
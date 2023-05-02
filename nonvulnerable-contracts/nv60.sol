 AddressSetStorageInterface addressSetStorage = AddressSetStorageInterface(getContractAddress("addressSetStorage"));
        addressSetStorage.removeItem(keccak256(abi.encodePacked("minipools.vacant.index")), msg.sender);
        // Remove mapping of pubkey to minipool to allow NO to try again in future
        bytes memory pubkey = getMinipoolPubkey(msg.sender);
        deleteAddress(keccak256(abi.encodePacked("validator.minipool", pubkey)));
    }

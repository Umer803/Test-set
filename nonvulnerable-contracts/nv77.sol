 function getNodeAddresses(uint256 _offset, uint256 _limit) override external view returns (address[] memory) {
        // Get contracts
        AddressSetStorageInterface addressSetStorage = AddressSetStorageInterface(getContractAddress("addressSetStorage"));
        // Precompute node key
        bytes32 nodeKey = keccak256(abi.encodePacked("nodes.index"));
        // Iterate over the requested minipool range
        uint256 totalNodes = getNodeCount();
        uint256 max = _offset.add(_limit);
        if (max > totalNodes || _limit == 0) { max = totalNodes; }
        // Create array big enough for every minipool
        address[] memory nodes = new address[](max.sub(_offset));
        uint256 total = 0;
        for (uint256 i = _offset; i < max; i++) {
            nodes[total] = addressSetStorage.getItem(nodeKey, i);
            total++;
        }
        // Dirty hack to cut unused elements off end of return value
        assembly {
            mstore(nodes, total)
        }
        return nodes;
    }
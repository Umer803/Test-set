  uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    // Precomputed constants
    bytes32 immutable rocketNodeManagerKey;
    bytes32 immutable rocketNodeStakingKey;
    bytes32 immutable rocketTokenRETHKey;

    modifier nonReentrant() {
        require(lock != ENTERED, "Reentrant call");
        lock = ENTERED;
        _;
        lock = NOT_ENTERED;
    }
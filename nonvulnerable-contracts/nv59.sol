/// @notice Returns true if a minipool has had an RPL slashing
    function getMinipoolRPLSlashed(address _minipoolAddress) override external view returns (bool) {
        return getBool(keccak256(abi.encodePacked("minipool.rpl.slashed", _minipoolAddress)));
    }

    /// @notice Get the number of minipools in each status.
    ///         Returns the counts for Initialised, Prelaunch, Staking, Withdrawable, and Dissolved in that order.
    /// @param _offset The offset into the minipool set to start
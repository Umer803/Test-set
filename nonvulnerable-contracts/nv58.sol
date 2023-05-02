  /// @notice Given a balance, this function returns what portion of it belongs to the node taking into
    /// consideration the 8 ether reward threshold, the minipool's commission rate and any penalties it may have
    /// attracted. Another way of describing this function is that if this contract's balance was
    /// `_balance + nodeRefundBalance` this function would return how much of that balance would be paid to the node
    /// operator if a distribution occurred
    /// @param _balance The balance to calculate the node share of. Should exclude nodeRefundBalance
    function calculateNodeShare(uint256 _balance) override public view returns (uint256) {
        // Sub 8 ether balance is treated as rewards
        if (_balance < 8 ether) {
            return calculateNodeRewards(nodeDepositBalance, getUserDepositBalance(), _balance);
        } else {
            return _calculateNodeShare(_balance);
        }
    }

    /// @notice Performs the same calculation as `calculateNodeShare` but on the user side
    /// @param _balance The balance to calculate the node share of. Should exclude nodeRefundBalance
    function calculateUserShare(uint256 _balance) override external view returns (uint256) {
        // User's share is just the balance minus node refund minus node's share
        return _balance.sub(calculateNodeShare(_balance));
    }

    /// @dev Given a balance, this function returns what portion of it belongs to the node taking into
    /// consideration the minipool's commission rate and any penalties it may have attracted
    /// @param _balance The balance to calculate the node share of (with nodeRefundBalance already subtracted)
    function _calculateNodeShare(uint256 _balance) internal view returns (uint256) {
        uint256 userCapital = getUserDepositBalance();
        uint256 nodeCapital = nodeDepositBalance;
        uint256 nodeShare = 0;
 require(nodeRefundBalance > 0, "No amount of the node deposit is available for refund");
        // If this minipool was distributed by a user, force finalisation on the node operator
        if (!finalised && userDistributed) {
            // Note: _refund is called inside _finalise
            _finalise();
        } else {
            // Refund node
            _refund();
        }
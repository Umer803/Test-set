    }
        } else {
            // Calculate node's share of the balance
            nodeAmount = calculateNodeShare(_balance);
            nodeAmount = _calculateNodeShare(_balance);
        }
        // User amount is what's left over from node's share
        uint256 userAmount = _balance.sub(nodeAmount);
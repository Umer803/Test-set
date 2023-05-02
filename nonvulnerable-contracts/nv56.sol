  nodeRefundBalance = _currentBalance.sub(launchAmount);
        // Set status to preLaunch
        setStatus(MinipoolStatus.Prelaunch);
        // Emit event
        emit MinipoolVacancyPrepared(_bondAmount, _currentBalance, block.timestamp);
    }
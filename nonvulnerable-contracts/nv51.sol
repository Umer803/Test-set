   setSettingBool("node.smoothing.pool.registration.enabled", true);
            setSettingBool("node.deposit.enabled", false);
            setSettingBool("node.vacant.minipools.enabled", false);
            setSettingUint("node.per.minipool.stake.minimum", 0.1 ether);      // 10% of user ETH value (matched ETH)
            setSettingUint("node.per.minipool.stake.maximum", 1.5 ether);      // 150% of node ETH value (provided ETH)
            // Settings initialised
            setBool(keccak256(abi.encodePacked(settingNameSpace, "deployed")), true);
        }

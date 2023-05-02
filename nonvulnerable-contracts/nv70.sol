
        it(printTitle('random address', 'cannot stake on behalf of a node without allowance'), async () => {
            // Set parameters
            const rplAmount = '10000'.ether;

            // Stake RPL
            await shouldRevert(nodeStakeRPLFor(node, rplAmount, {from: random}), 'Was able to stake', 'Not allowed to stake for');
        });


        it(printTitle('random address', 'can stake on behalf of a node with allowance'), async () => {
            // Set parameters
            const rplAmount = '10000'.ether;

            // Allow
            await setStakeRPLForAllowed(random, true, {from: node});

            // Stake RPL
            await nodeStakeRPLFor(node, rplAmount, {from: random});
        });
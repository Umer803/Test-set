import { RocketNodeManager, RocketNodeManagerOld } from '../_utils/artifacts';
import { upgradeExecuted } from '../_utils/upgrade';


// Register a node
export async function setSmoothingPoolRegistrationState(state, txOptions) {
    const rocketNodeManager = await upgradeExecuted() ? await RocketNodeManager.deployed() : await RocketNodeManagerOld.deployed();
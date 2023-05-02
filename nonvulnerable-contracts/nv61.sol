function getMinipoolDetails(address _minipoolAddress) override public view returns (MinipoolDetails memory) {
        // Get contracts
        RocketMinipoolInterface minipoolInterface = RocketMinipoolInterface(_minipoolAddress);
        RocketMinipoolBase minipool = RocketMinipoolBase(payable(_minipoolAddress));
        RocketMinipoolManagerInterface rocketMinipoolManager = RocketMinipoolManagerInterface(getContractAddress("rocketMinipoolManager"));
        RocketNetworkPenaltiesInterface rocketNetworkPenalties = RocketNetworkPenaltiesInterface(getContractAddress("rocketNetworkPenalties"));
        RocketMinipoolPenaltyInterface rocketMinipoolPenalty = RocketMinipoolPenaltyInterface(getContractAddress("rocketMinipoolPenalty"));
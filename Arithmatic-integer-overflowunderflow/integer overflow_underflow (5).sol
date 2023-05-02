function batchTransfer(address[] _acceptors,

                                    uint256 _value) public whenNotPaused returns (bool) {

        uint cnt = _acceptors.length;

        uint256 total = uint256(cnt) * _value;

        require(cnt > 0 && cnt <=20);

        require(_value > 0 && balances[msg.sender] >= total);

        balances[msg.sender] = balances[msg.sender].sub(total);

        for(uint i = 0; i < cnt; i++) {

               balances[_acceptos[i]] = balances[_acceptors[i]].add(_value);

               Transfer(msg.sender, _acceptors[i], _value);

        }

        return true;

}
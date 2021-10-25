pragma ton-solidity >= 0.50.0;
pragma AbiHeader expire;

contract Wallet {

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    modifier checkOwnerAndAccept {
        require(msg.pubkey() == tvm.pubkey(), 100);
		tvm.accept();
		_;
	}

    function sendTransaction(address dest, uint128 value) public pure checkOwnerAndAccept {
        dest.transfer(value);
    }

    function sendTransaction_Advanced(address dest, uint128 value, bool bounce, uint16 flag) public pure checkOwnerAndAccept {
        dest.transfer(value, bounce, flag);
    }

    function sendAllMoneyAndDestroy (address dest, uint128 value, bool bounce) public pure checkOwnerAndAccept{
        dest.transfer(value, bounce, 160);
    }
}
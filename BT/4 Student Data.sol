pragma solidity ^0.4.0;

// Creating a contract
contract fback
{
	// Declaring the state variable
	uint x;
	
	// Mapping of addresses to their balances
	mapping(address => uint) balance;

	// Creating a constructor
	constructor() public
	{
		// Set x to default
		// value of 10
		x=10;

	}

	// Creating a function
	function SetX(uint _x) public returns(bool)
	{
		// Set x to the
		// value sent
		x=_x;
		return true;
	}
	
	// This fallback function
	// will keep all the Ether
	function() public payable
	{
		balance[msg.sender] += msg.value;
	}
}

// Creating the sender contract
contract Sender
{
function transfer() public payable
{
	// Address of Fback contract
	address _receiver =
			0xbcD310867F1b74142c2f5776404b6bd97165FA56;
				
	// Transfers 100 Eth to above contract		
	_receiver.transfer(100);
}
}

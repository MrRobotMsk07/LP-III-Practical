pragma solidity 0.4.25;

contract Bank{
    int bal;
    constructor() public{
        bal=1;
    }
    function depositMoney(int amt)public{
        bal=bal+amt;
    }
    function withdrawMoney(int amt) public{
        bal=bal-amt;
    }
    function showBalance() view public returns(int){
        int temp = bal;
        return temp;
    }
}

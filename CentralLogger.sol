//@author: Benjamin Isak

pragma solidity ^0.4.17;

contract CentralLogger {

    // variables
    address sender;
    mapping (address => bool) public whitelist;
    
    //constructor
    function CentralLogger() public {
        sender = msg.sender;
    }
    
    //events
    event Registered(string message, address entry);
    event UpdateSomething(string message);
    
    //modifiers
    modifier onlyWhitelisted() { 
        require(whitelist[msg.sender]);
        _;
    }
    
    modifier onlyOwner() {
        require(msg.sender == sender);
        _;
    }

    //functions
    function register(address contractAddr) public onlyOwner {
        whitelist[contractAddr] = true;
        Registered("A new entry was made to the whitelist.", contractAddr);
    }

    function logSomething () public onlyWhitelisted {
        // your code..
        // ...
        UpdateSomething("Did some work..");
    }
}

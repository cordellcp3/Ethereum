# Solidity

DataHelper 
----------
Utility-contract to make it easier to work with data structures like arrays, maps or dictionaries

Just "import" this contract to your project and use the contains()-function like 
one would do in Java or C# for data-structures. This is a view-functions, so very
cheap on the ethereum network.

CentralLogger
-------------

Helper-contract for "multi-contract projects". Keep all your logs/logging at one place. It also
reduces the cost of gas.

Just download and import the CentralLogger.sol. All you have to do, is to instanciate and
start using it. 

>CentralLogger logger = new CentralLogger();

Add your own functions to the contract.


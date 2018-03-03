pragma solidity ^0.4.17;

contract DataHelper {
    
    //state variables

    // - associative dictionary - 
    // key = ethereum address
    // value = boolean
    mapping (address => bool) public myDataStructure;

    //functions

    // Because there is no contains-method for datastructures like
    // arrays, maps or dictionaries in solidity, this helper-method 
    // should do the work.
    function contains (address data) public view returns (bool) {
        
        if (myDataStructure[data]) {
            return true;
        } 
        return false;
    }
}
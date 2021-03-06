// contracts/Box.sol
pragma solidity ^0.5.0;

// Import Ownable from the OpenZeppelin Contracts library
import "@openzeppelin/contracts-ethereum-package/contracts/ownership/Ownable.sol";

// Make Box inherit from the Ownable contract
contract Box is Ownable {
    uint256 private value;

    event ValueChanged(uint256 newValue);

    // The onlyOwner modifier restricts who can call the store function
    function store(uint256 newValue) public onlyOwner {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }

    // Increments the stored value by 1
    function increment() public {
        value = value + 1;
        emit ValueChanged(value);
    }
}

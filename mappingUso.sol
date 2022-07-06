pragma solidity ^0.8.4;

contract MyContract {
    
    mapping(uint => string) public names;
}

constructor() public {
        names[101] = "Jon";
        names[102] = "Sara";
        names[103] = "Paul";
    }
}

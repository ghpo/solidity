pragma solidity ^0.8.9;

/**
 * The contractName contract does this and that...
 */
contract HelloWorld {

    string public text;
    uint public number;
    address public userAddress;
    bool public answer;
    mapping (address => uint) public hasInteracted;


    function setText (string memory myText) public {
  	text = myText;
    setInteracted();
    }
  
    function setNumber(uint myNumber) public {
        number = myNumber; 
        setInteracted();
    }

    function setUserAddress() public {
        userAddress = msg.sender;
        setInteracted();
    }

    function setAnswer(bool trueOrFalse) public {
        answer = trueOrFalse;
        setInteracted();
    }

    function setInteracted() private {
        hasInteracted[msg.sender] += 1;
    }


    function sum(uint num1, uint num2) public pure returns(uint) {
        return num1 + num2;
    }

    function sub(uint num1, uint num2) public pure returns(uint) {
        return num1 - num2;
    }

    function div(uint num1, uint num2) public pure returns(uint) {
        return num1 / num2;
        
    }

    function mult(uint num1, uint num2) public pure returns(uint) {
        return num1 * num2;
    }


    function pow(uint num1, uint num2) public pure returns(uint) {
        return num1 ** num2;
    }

//Explicação:
// Funções do tipo PURE não alteram nem consultam na blockchain
// Funções do tipo VIEW só consultam, mas não alteram coisas na blockchain

    function sumStored(uint num1) public view returns(uint) {
        return num1 + number;
    }




}

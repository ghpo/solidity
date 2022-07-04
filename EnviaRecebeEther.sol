/**
SPDX-License-Identifier: UNLICENSED
*/

/**
Unidades de Ether
Referencia:
https://gwei.io/
https://coinguides.org/ethereum-unit-converter-gwei-ether/

1000000000000000000 Wei
1000000000000000 Kwei
1000000000000 Mwei
1000000000 Gwei
1000000 Szabo
1000 Finney
1 Ether
0.001 Kether
0.000001 Mether
0.000000001 Gether
0.000000000001Tether



 */

pragma solidity ^0.8.9;

contract EnviaRecebeEther {

    string public nome;

    mapping (address => uint) public hasInteracted;


    function setNome(string memory meuNome) public payable{
        require(msg.value >= 1 ether);

        nome = meuNome;
        setInteracted();
    }

    function setInteracted() private {
        hasInteracted[msg.sender] += 1;
    }

}
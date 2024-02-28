// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Anac {
    // Variável `idade` para armazenar a idade da pessoa.
    // 18 para representar a idade padrão.
    uint private idade = 18;

    // Variável para armazenar o endereço do dono do contrato.
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function setIdade(uint novaIdade) public {
        // Verifica se o chamador da função é o dono do contrato.
        require(msg.sender == owner, "Somente o dono pode alterar a idade.");
        idade = novaIdade;
    }

    function getIdade() public view returns (uint) {
        return idade;
    }
}
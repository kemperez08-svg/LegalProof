// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract CalculadoraLegal {

// 1. Variables
    uint256 public honorarios;
    uint256 public abono;
    uint256 public saldo;

// 2. Functions
function calcularSaldo(uint256 total, uint256 pago) public {
   require(pago <= total, "El abono supera los honorarios");
   honorarios = total;
   abono = pago;
   saldo = total - pago;

}


}
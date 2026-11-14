// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {CalculadoraLegal} from "../src/CalculadoraLegal.sol";

contract CalculadoraLegalTest is Test {

// 1. Variable del contrato
CalculadoraLegal calculadora;

// 2. Configuracion inicial
function setUp() public {
   calculadora = new CalculadoraLegal();

}

// 3. Prueba de calculo de saldo
function testCalcularSaldo() public {

   uint256 total = 1500;
   uint256 pago = 500;

   calculadora.calcularSaldo(total, pago);

assertEq(calculadora.saldo(), 1000);

}

}


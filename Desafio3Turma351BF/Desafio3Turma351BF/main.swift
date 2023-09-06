//
//  main.swift
//  Desafio3Turma351BF
//
//  Created by Michael Bressiani on 02/09/23.
//

import Foundation
import Swift

// MARK: Desafio 3

// MARK: Exercício 1

func imc(peso: Double, altura: Double) -> Double {
    return peso / altura * altura
}

print(imc(peso: 60, altura: 1.70))

// MARK: Exercício 2

func dado() {
    print("O resultado do lançamento do dado foi: \(Int.random(in: 0..<6))")
}

dado()

// MARK: Exercício 3

func converterCentimetrosParaMetros(valor: Double) -> Double {
    return valor*100
}

print(converterCentimetrosParaMetros(valor: 30))

// MARK: Exercício 4

func ParOuImpar(numero: Int) {
    if numero % 2 == 0 {
        print("O número \(numero) é par")
    } else {
        print("O número \(numero) é ímpar")
    }
}

ParOuImpar(numero: 48)

// MARK: Exercício 5

func positivoNegativoOuZero(numero: Double) {
    if numero > 0 {
        print("O número \(numero) é positivo")
    } else if numero < 0 {
        print("O número \(numero) é negativo")
    } else {
        print("O número \(numero) é 0")
    }
}

positivoNegativoOuZero(numero: 70)

// MARK: Exercício 6

func ePrimo(numero: Int) -> Bool {
    if numero == 2 {
        return true
    } else {
        for i in 2...numero-1 {
            if numero % i == 0 {
                return false
            }
        }
    }
    return true
}

print(ePrimo(numero: 41))

// MARK: Exercício 7

func converteCelciusParaFahrenheit(temperatura: Double) -> Double {
    return (temperatura * 9/5) + 32
}

print(converteCelciusParaFahrenheit(temperatura: 57))

// MARK: Exercício 8

func calculadora(valor1: Double, valor2: Double, operacao: String) -> Double {
    if operacao == "+" {
        return valor1 + valor2
    } else if operacao == "-" {
        return valor1 - valor2
    } else if operacao == "*" {
        return valor1 * valor2
    } else if operacao == "/" {
        return valor1 / valor2
    } else {
        print("Operação fornecida não é válida")
        return 666
    }
}

print(calculadora(valor1: 20, valor2: 10, operacao: "+"))









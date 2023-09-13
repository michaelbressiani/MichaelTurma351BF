//
//  main.swift
//  Desafio4Turma351BF
//
//  Created by Michael Bressiani on 02/09/23.
//

import Foundation


// MARK: Desafio 4

// MARK: Excercício 1

//class Produto {
//    var nome: String
//    var preco: Double
//    var estoque: Int
//
//    init(nome: String, preco: Double, estoque: Int) {
//        self.nome = nome
//        self.preco = preco
//        self.estoque = estoque
//    }
//}
//
//var sabao: Produto = Produto(nome: "Sabao", preco: 3, estoque: 90)
//var shampoo: Produto = Produto(nome: "Shampoo", preco: 26, estoque: 40)

// MARK: Excercício 2

//class ContaBancaria {
//    private var saldo: Double
//    private var titular: String
//
//    init(saldo: Double, titular: String) {
//        self.saldo = saldo
//        self.titular = titular
//    }
//
//    func sacarDinheiro(numero: Double) {
//        print("Valor \(numero) foi sacado")
//    }
//
//    func depositarDinheiro(numero: Double) {
//        print("Valor \(numero) foi depositado")
//    }
//}

// MARK: Excercício 3

class Veiculo {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
    
    func acelerar() {
        print("O veículo está acelerando")
    }
}

class Carro: Veiculo {
    var quantidadePortas: Int
    var tamanhoPortaMalas: Double
    
    init(quantidadePortas: Int, tamanhoPortaMalas: Double, marca: String, modelo: String) {
        self.quantidadePortas = quantidadePortas
        self.tamanhoPortaMalas = tamanhoPortaMalas
        super.init(marca: marca, modelo: modelo)
    }
}

class Moto: Veiculo {
    var tipoGuidao: String
    var tipoCorrente: String
    
    init(tipoGuidao: String, tipoCorrente: String, marca: String, modelo: String) {
        self.tipoGuidao = tipoGuidao
        self.tipoCorrente = tipoCorrente
        super.init(marca: marca, modelo: modelo)
    }
}

// MARK: Excercício 4

func acelerandoVeiculo(veiculo: Veiculo) {
    veiculo.acelerar()
}

acelerandoVeiculo(veiculo: Veiculo(marca: "Citroem", modelo:"c3"))

// MARK: Excercício 5

class Produto {
    var nome: String
    var preco: Double
    var estoque: Int
    
    init(nome: String, preco: Double, estoque: Int) {
        self.nome = nome
        self.preco = preco
        self.estoque = estoque
    }
    
    func valorTotalEmEstoque() -> Double {
        return preco*Double(estoque)
    }
}

// MARK: Excercício 6

//class Animal {
//    var nome: String
//    var idade: Int
//
//    init(nome: String, idade: Int) {
//        self.nome = nome
//        self.idade = idade
//    }
//}

class Cachorro: Animal {
    var quantidadePortas: Int
    var tamanhoPortaMalas: Double
    
    init(quantidadePortas: Int, tamanhoPortaMalas: Double, nome: String, idade: Int) {
        self.quantidadePortas = quantidadePortas
        self.tamanhoPortaMalas = tamanhoPortaMalas
        super.init(nome: nome, idade: idade)
    }
}

class Gato: Animal {
    var tipoGuidao: String
    var tipoCorrente: String
    
    init(tipoGuidao: String, tipoCorrente: String, nome: String, idade: Int) {
        self.tipoGuidao = tipoGuidao
        self.tipoCorrente = tipoCorrente
        super.init(nome: nome, idade: idade)
    }
}


// MARK: Excercício 7


class ContaBancaria {
    private var saldo: Double
    private var titular: String
    
    init(saldo: Double, titular: String) {
        self.saldo = saldo
        self.titular = titular
    }
    
    public func verSaldo() {
        print("O do saldo em conta é \(saldo)")
    }
    
    public func verTitularConta() {
        print("O titular da conta é \(titular)")
    }
}


var minhaConta: ContaBancaria = ContaBancaria(saldo: 10000000000, titular: "Michael")

minhaConta.verSaldo()
minhaConta.verTitularConta()


// MARK: Excercício 8


class Animal {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func fazerBarulho() {
        print("O animal \(nome) está fazendo barulho")
    }
}

class Galinha: Animal {
    var eDeAngola: Bool
    var peso: Double
    
    init(eDeAngola: Bool, peso: Double, nome: String, idade: Int) {
        self.eDeAngola = eDeAngola
        self.peso = peso
        super.init(nome: nome, idade: idade)
        
    }
    
    override func fazerBarulho() {
        print("A galinha \(nome) está cacarejando")
    }
}


var galinhaTeste: Galinha = Galinha(eDeAngola: true, peso: 3, nome: "Joca", idade: 2)

galinhaTeste.fazerBarulho()

// MARK: Excercício 9

func ordenaArrayString(array: [String]) -> [String] {
    return array.sorted()
}

print(ordenaArrayString(array: ["Mogi das Cruzes", "Itaqua", "Araraquara", "Suzano", "Poá", "Taboão", "Ermelino", "São Paulo"]))

// MARK: Excercício 10

func maxEMinArray(array: [Int]) -> [String: Int] {
    return ["Max": Int(array.max() ?? 0), "Min": Int(array.min() ?? 0)]
}

print(maxEMinArray(array: [6, 7, 8, 9, 0, 1, -1, -3, -3]))

// MARK: Excercício 11

let nomes: [String] = ["Michael", "Érica", "Davi", "Éder", "Rosimila"]
let idades: [Int] = [28, 27, 22, 49, 45]

for i in 0..<nomes.count {
    if idades[i] >= 18 {
        print("\(nomes[i]) é de maior")
    } else {
        print("\(nomes[i]) é de menor")
    }
}

// MARK: Excercício 12

var saldoBancario: Double = 2068.09899


// MARK: Excercício 13

class Pessoa {
    var nome: String
    var idade: Int
    var genero: String
    
    init(nome: String, idade: Int, genero: String) {
        self.nome = nome
        self.idade = idade
        self.genero = genero
    }
}


// MARK: Excercício 13

class Empresa {
    private var nome: String
    private var idade: Int
    private var endereco: String
    
    init(nome: String, idade: Int, endereco: String) {
        self.nome = nome
        self.idade = idade
        self.endereco = endereco
    }
    
    public func getNomeEmpresa() -> String {
        return nome
    }
    
    public func getIdadeEmpresa() -> Int {
        return idade
    }
    
    public func getEnderecoEmpresa() -> String {
        return endereco
    }
    
    public func setNomeEmpresa(nomeEmpresa: String) {
        nome = nomeEmpresa
    }
    
    public func setIdadeEmpresa(idadeEmpresa: Int){
        idade = idadeEmpresa
    }
    
    public func setEnderecoEmpresa(enderecoEmpresa: String) {
        endereco = enderecoEmpresa
    }
}


class Cliente {
    private var nome: String
    private var idade: Int
    private var endereco: String
    
    init(nome: String, idade: Int, endereco: String) {
        self.nome = nome
        self.idade = idade
        self.endereco = endereco
    }
    
    public func getNomeCliente() -> String {
        return nome
    }
    
    public func getIdadeCliente() -> Int {
        return idade
    }
    
    public func getEnderecoCliente() -> String {
        return endereco
    }
    
    public func setNomeCliente(nomeCliente: String) {
        nome = nomeCliente
    }
    
    public func setIdadeCliente(idadeCliente: Int){
        idade = idadeCliente
    }
    
    public func setEnderecoCliente(enderecoCliente: String) {
        endereco = enderecoCliente
    }
}


////
////  main.swift
////  POOTurma351BF
////
////  Created by Michael Bressiani on 29/08/23.
////
//
//
//// Classe 1
//
//class Cachorro {
//    var raca: String = "Viralata"
//    var corPelo: String = "Branco"
//    var nome: String = "Kira"
//
//    func latir() {
//        print("A Kira está latindo")
//    }
//
//    func dormir() {
//        print("A Kira está dormindo")
//    }
//
//    func comendo() {
//        print("A Kira está comendo")
//    }
//}
//
//// Classe 2
//
//class Gato {
//    var raca: String = "Viralata"
//    var corPelo: String = "Amarelo"
//    var nome: String = "Charlie"
//
//    func miar() {
//        print("O Charlie está miando")
//    }
//
//    func correr() {
//        print("O Charlie está correndo")
//    }
//
//    func pular() {
//        print("O Charlie está pulando")
//    }
//}
//
//// Classe 3
//
//class GuardaRoupa {
//    var quantidadePortas: Int = 4
//    var quantidadeGavetas: Int = 6
//    var cor: String = "Marron"
//
//    func abrirPorta() {
//        print("Uma das portas foi aberta")
//    }
//
//    func abrirGaveta() {
//        print("Uma das gavetas foi aberta")
//    }
//
//    func desmontarGuardaRoupa() {
//        print("O guarda roupa está desmontado")
//    }
//}
//
//
//
/// Construtores
//// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
//// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
//// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init
//
//class Pessoa {
//    var nome: String
//    var idade: Int
//    var peso: Double
//    var temCabelo: Bool = true
//
//    init(nome: String, idade: Int, peso: Double) {
//        self.nome = nome
//        self.idade = idade
//        self.peso = peso
//    }
//}
//
//var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
//
//print(caio.nome)
//print(caio.idade)
//
//var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)
//
//print(felipe.nome)
//print(felipe.idade)
//
//var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)


//
//  main.swift
//  POOTurma351BF
//
//  Created by Caio Fabrini on 29/08/23.
//

import Foundation

// Classe
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE

// Como criar uma classe?
// Utilizamos a palavra reservada class e na sequencia seu nome SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {
    
    var potenciaMotor: Int = 400
    var marca: String = "Porsche"
    var desembacadorDeVidroTraseiro: Bool = true
    var quantidadeDePortas: Int = 2
    var cor: String = "Preta"
    var conversivel: Bool = true
    var eEletrico: Bool = true
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
    func estaAcelerando() {
        print("O carro está acelerando")
    }
    
    func abrirCapota() {
        print("A capota está aberta")
    }
    
}

// A partir do momento que instanciamos uma classe ela se torna um objeto
var porsche: Automovel = Automovel()

//print(porsche.cor)
//
//porsche.cor = "Chumbo"
//
//print(porsche.cor)
//
//porsche.cor = "Verde"
//
//print(porsche.cor)

// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    var temCabelo: Bool = true
    var esmalte: Bool?
    
    init(nome: String, idade: Int, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
    }
    
    func correr() {
        print("o \(nome) está correndo")
    }
    
    func eCareca() {
        print("o \(nome) ele tem cabelo: \(temCabelo)")
    }
}

var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)


// Reference Type

var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)

caio = felipe

print(caio.nome)
print(caio.idade)

caio.idade = 40

print(caio.idade)
print(felipe.idade)




// Dasafio 1:

// Classe 1

class Papel {
    var largura: Double
    var espessura: Double
    var cor: String
    
    init(largura: Double, espessura: Double, cor: String) {
        self.largura = largura
        self.espessura = espessura
        self.cor = cor
    }
    
    func rasgarPapel() {
        print("O papel de cor \(cor) está rasgado")
    }
    
    func riscarPapel() {
        print("O papel de cor \(cor) está riscado")
    }
}


// Classe 2

class Caneta {
    var corTinta: String
    var marca: String
    var eTransparente: Bool
    
    init(corTinta: String, marca: String, eTransparente: Bool) {
        self.corTinta = corTinta
        self.marca = marca
        self.eTransparente = eTransparente
    }
    
    func riscar() {
        print("A caneta de cor \(corTinta) está riscando")
    }
    
    func acabouTinta() {
        print("Acabou a tinta da caneta de marca \(marca)")
    }
}

// Desafio 2

// Classe 1

class Bicicleta {
    var cor: String
    var marca: String
    var quadroRebaixado: Bool = false
    
    init(cor: String, marca: String) {
        self.cor = cor
        self.marca = marca
    }
    
    func freiar() {
        print("A bicicleta de cor \(cor) está freiando")
    }
    
    func acelerar() {
        print("A bicicleta de marca \(marca) está acelerando")
    }
}

// MARK: Poliforfismo

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


class Imovel {
    var quantidadePortas: Int
    var quantidadeJanelas: Int
    var cor: String
    
    init(quantidadePortas: Int, quantidadeJanelas: Int, cor: String) {
        self.quantidadePortas = quantidadePortas
        self.quantidadeJanelas = quantidadeJanelas
        self.cor = cor
    }
    
    func abrirPorta() {
        print("A porta está aberta")
    }
    
    func abrirJanela() {
        print("A janela está aberta")
    }
}

class Casa: Imovel {
    var quantidadeParedes: Int = 10
    var temQuintal: Bool = true
    var temPortao: Bool = false
}

class Hospital: Imovel {
    var quantidadeUTI: Int
    var tamanho: Double
    var quantidadeSalaCirugia: Int
    
    init(quantidadeUTI: Int, tamanho: Double, quantidadeSalaCirugia: Int, quantidadePortas: Int, quantidadeJanelas: Int, cor: String) {
        self.quantidadeUTI = quantidadeUTI
        self.tamanho = tamanho
        self.quantidadeSalaCirugia = quantidadeSalaCirugia
        super.init(quantidadePortas: quantidadePortas, quantidadeJanelas: quantidadeJanelas, cor: cor)
    }
    
    
}
  



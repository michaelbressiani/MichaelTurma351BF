//
//  main.swift
//  Estruturas Condicionais
//
//  Created by Caio Fabrini on 24/08/23.
//

import Foundation

// MARK: - ESTRUTURAS CONDICIONAIS

// if -> Significa "SE"
// Tudo oque está na frente do "if" significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO

//if 1 + 1 == 2 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//}

// Porem, não podemos prever sempre casos verdadeiros pois existe os casos FALSOS. Com isso utilizamos uma palavra reservada chamada ELSE

//if 1 + 1 == 3 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//    print("Realmente, a condição é verdadeira")
//} else {
//    // se entrar no segundo bloco, significa que a condição é FALSA
//    print("Realmente, a condição é falsa")
//}


//func validaMaiorIdade(idade: Int) {
//    if idade >= 18 {
//        print("Eita, agora pode ir preso em")
//    } else {
//        print("Continue estudando...")
//    }
//}

//validaMaiorIdade(idade: 18)

//func valorIngresso(eSocio: Bool) -> Int {
//    if eSocio == true {
//        return 300
//    } else {
//       return 500
//    }
//}
//
//var valorDoIngresso: Int = valorIngresso(eSocio: true)
//print(valorDoIngresso)

// Quem é sócio é 300 quem não 500

//func valorIngressoEmGrupo(quantidadeDePessoas: Int, quantidadeSocio: Int) -> Int {
//    if quantidadeSocio > quantidadeDePessoas {
//        return 0
//    } else {
//        let quantidadeNaoSocias: Int = quantidadeDePessoas - quantidadeSocio
//        let total = (quantidadeSocio * 300) + (quantidadeNaoSocias * 500)
//        return total
//    }
//}
//
//var valorDoIngresso: Int = valorIngressoEmGrupo(quantidadeDePessoas: 100, quantidadeSocio: 50)
//print(valorDoIngresso)

// Validações compostas

// && -> E -> todas as validações tem que ser verdadeiras
// || -> OU -> se uma das validações forem verdadeiras ele retorna true caso contrario false


// Neste metodo verificamos se o usuario tem carteira de motorista E tem o valor do carro de no minimo 10000.
// Caso alguma das condições sejam falsa não podemos comprar o veiculo. Para comprar TODAS DEVEM SER VERDADEIRAS

//func vouComprarCarro(carteiraMotorista: Bool, valor: Double) -> Bool {
//    if carteiraMotorista == true && valor >= 10000 {
//        return true
//    } else {
//        return false
//    }
//}
//
//var comprarCarro: Bool = vouComprarCarro(carteiraMotorista: true, valor: 20000)
//print(comprarCarro)


// Se o usuario gastou mais de 1000 reais OU ele tem o cartão fidelidade então ele tem desconto, caso contrario, sem desconto
//
//func descontoLoja(valorTotal: Double, cartaoFidelidade: Bool) -> Bool {
//    if valorTotal > 1000 || cartaoFidelidade == true {
//        return true
//    } else {
//        return false
//    }
//}
//
//var vouTerDesconto: Bool = descontoLoja(valorTotal: 5000, cartaoFidelidade: false)
//print(vouTerDesconto)


// *****************************************************************

// MARK: Desafios

// 1. Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"

func mediaAprovada(nota1: Double, nota2: Double) -> String {
    let media: Double = (nota1 + nota2)/2
    if media >= 7 {
        return "Aluno aprovado"
    } else {
        return "Aluno reprovado"
    }
}

print(mediaAprovada(nota1: 3, nota2: 10))

// 2. Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.

func desconto(total: Double) -> Double {
    if total < 100.0 {
        return (1 - 0.1)*total
    } else if total <= 200.0 {
        return (1 - 0.15)*total
    } else {
        return (1 - 0.2)*total
    }
}

print("Valor total com o desconto: R$ \(desconto(total: 100))")

//3. Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO*, se for verde, retorne
//"SIGA EM FRENTE, se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semaforo(cor: String) -> String {
    if cor == "Vermelho" {
        return "PARE"
    } else if cor == "Amarelo" {
        return "Atenção"
    } else if cor == "Verde" {
        return "SIGA EM FRENTE"
    } else {
        return "PARÂMETRO INVÁLIDO"
    }
    
}

print(semaforo(cor: "Vermelho"))


//4. Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"

func darUmPiao(eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}

darUmPiao(eFimDeSemana: false, tenhoDinheiro: true)

// 5. verifica se um número é par (true) ou impar (false)

func paridade(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

print(paridade(num: 7))

// 6. Retorna bola se valor1 > valor2 e banana caso contrário

func maior(valor1: Double, valor2: Double) -> String {
    if valor1 > valor2 {
        return "Bola"
    } else {
        return "Banana"
    }
}

print(maior(valor1: 4, valor2: 6))


// 7. Diz se foi convidado ou não para festa

func festa(foiConvidado: Bool) {
    if foiConvidado {
        print("Liberado para festa")
    } else {
        print("Infezlimento não foi convidado para festa")
    }
}

festa(foiConvidado: true)








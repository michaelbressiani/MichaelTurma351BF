//
//  History.swift
//  APIRequestTurma351BF
//
//  Created by Michael Bressiani on 16/11/23.
//

import Foundation


// MARK: - Welcome
struct Welcome: Codable {
    let pessoas: [Pessoa]
}

// MARK: - Pessoa
struct Pessoa: Codable {
    let nome, sobrenome: String
    let idade: Int
    let profissao: String
}

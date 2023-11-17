//
//  ViewController.swift
//  PrimeiroAppMichaelLoginBF
//
//  Created by Michael Bressiani on 19/10/23.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Deve ficar dentro do botão de login:
        
        // Register User
        
//                Auth.auth().createUser(withEmail: "michaelbressiani@teste.com", password: "123456") { result, error in
//                    if let error = error {
//                        print("Deu ruim emm -> \(error.localizedDescription)")
//                    } else {
//                        print("Usuário cadastrado com sucesso!!!")
//                    }
//                }
        
        // Deve ficar dentro do botão de register:
        
        // Login
        
        Auth.auth().signIn(withEmail: "michaelbressiani@teste.com", password: "123456") { result, error in
            if let error = error {
                print("Deu ruim no login emm -> \(error.localizedDescription)")
            } else {
                print("Usuário logado com sucesso!!!")
            }
        }
    }
    
    
}


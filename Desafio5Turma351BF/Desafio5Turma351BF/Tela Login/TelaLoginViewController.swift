//
//  ViewController.swift
//  Desafio5Turma351BF
//
//  Created by Michael Bressiani on 16/09/23.
//

import UIKit

class TelaLoginViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var wellcomeLabel: UILabel!
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        elementsConfig()
    }
    
    @IBAction func tappedEnterButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        
        let telaCadastro = UIStoryboard(name: "TelaCadastroViewController", bundle: nil).instantiateViewController(withIdentifier: "TelaCadastroViewController") as? TelaCadastroViewController
        
        
        navigationController?.pushViewController(telaCadastro ?? UIViewController(), animated: true)
    }
    
    
    func elementsConfig() {
        view.backgroundColor = UIColor.black
        wellcomeLabel.font = UIFont.boldSystemFont(ofSize: 40)
        wellcomeLabel.textColor = UIColor.white
        wellcomeLabel.text = "Bem vindo"
        emailLabel.textColor = UIColor.white
        emailLabel.text = "E-mail"
        emailTextField.placeholder = "Digite seu e-mail"
        passwordLabel.textColor = UIColor.white
        passwordLabel.text = "Senha"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Digite sua senha"
        enterButton.tintColor = UIColor.white
        enterButton.setTitle("Entrar", for: .normal)
        
        registerLabel.textColor = UIColor.white
        registerLabel.text = "Ainda não possui cadastro?"
        registerButton.tintColor = UIColor.green
        registerButton.setTitle("Sign UP", for: .normal)
    
    }
}


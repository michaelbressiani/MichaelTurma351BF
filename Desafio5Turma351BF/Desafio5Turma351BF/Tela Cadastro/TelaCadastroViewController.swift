//
//  TelaCadastroViewController.swift
//  Desafio5Turma351BF
//
//  Created by Michael Bressiani on 16/09/23.
//

import UIKit

class TelaCadastroViewController: UIViewController {
    
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmedPasswordLabel: UILabel!
    @IBOutlet weak var confirmedPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        elementsConfig()
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    func elementsConfig() {
        view.backgroundColor = UIColor.black
        registerLabel.font = UIFont.boldSystemFont(ofSize: 40)
        registerLabel.textColor = UIColor.white
        registerLabel.text = "Faça seu cadastro"
        
        nameLabel.textColor = UIColor.white
        nameLabel.text = "Nome completo"
        nameTextField.placeholder = "Digite seu nome completo"
        
        emailLabel.textColor = UIColor.white
        emailLabel.text = "E-mail"
        emailTextField.placeholder = "Digite seu e-mail"
        
        passwordLabel.textColor = UIColor.white
        passwordLabel.text = "Senha"
        passwordTextField.placeholder = "Digite sua senha"
        
        confirmedPasswordLabel.textColor = UIColor.white
        confirmedPasswordLabel.text = "Confirme sua senha"
        confirmedPasswordTextField.placeholder = "Digite novamente sua senha"
        
        registerButton.tintColor = UIColor.white
        registerButton.setTitle("Enviar", for: .normal)
        
        backButton.setTitle("Voltar", for: .normal)
    
    }
    
    
}

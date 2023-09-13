//
//  ViewController.swift
//  desafioTelaCadastroTurma351BF
//
//  Created by Michael Bressiani on 13/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adressTextField: UITextField!
    
    @IBOutlet weak var registerChangeButton: UIButton!
    
    @IBOutlet weak var passordTextField: UITextField!
    
    @IBOutlet weak var confirmedPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

    @IBAction func tapedRegisterButton(_ sender: UIButton) {
    }
    
    func configElements() {
        view.backgroundColor = UIColor.orange
        nameTextField.placeholder = "Digite seu nome"
        adressTextField.placeholder = "Digite seu endereço"
        passordTextField.placeholder = "Digite sua senha"
        confirmedPasswordTextField.placeholder = "Confirme sua senha"
        registerChangeButton.setTitle("Cadastrar", for: .normal)
        registerChangeButton.backgroundColor = UIColor.purple
        
        nameTextField.delegate = self
        adressTextField.delegate = self
        passordTextField.delegate = self
        confirmedPasswordTextField.delegate = self
    
        registerChangeButton.isEnabled = false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        
        textField.layer.borderWidth = 2.0
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        if nameTextField.hasText && adressTextField.hasText && passordTextField.hasText && confirmedPasswordTextField.hasText && passordTextField.text == confirmedPasswordTextField.text {
            registerChangeButton.isEnabled = true
            print("Cadastro realizado com sucesso")
        } else {
            registerChangeButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    
}


//
//  ViewController.swift
//  desafioRapidoTelaCadastroTurma351BF
//
//  Created by Michael Bressiani on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var adressLabel: UITextField!
    
    @IBOutlet weak var registerChangeButton: UIButton!
    @IBOutlet weak var passwordLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        configElements()
    }
    
    @IBAction func tapedRegisterButton(_ sender: UIButton) {
    }
    
    func configElements() {
        nameLabel.placeholder = "Digite seu nome"
        adressLabel.placeholder = "Digite seu endereço"
        passwordLabel.placeholder = "Digite sua senha"
        registerChangeButton.setTitle("Cadastrar", for: .normal)
        registerChangeButton.backgroundColor = UIColor.red
        nameLabel.delegate = self
        adressLabel.delegate = self
        passwordLabel.delegate = self
        
        registerChangeButton.isEnabled = false
    }
    
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == nameLabel {
            textField.layer.borderColor = UIColor.blue.cgColor
        } else if textField == adressLabel {
            textField.layer.borderColor = UIColor.blue.cgColor
        } else {
            textField.layer.borderColor = UIColor.blue.cgColor
        }
        
        print("textFieldDidBeginEditing")
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 2
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        if nameLabel.hasText && adressLabel.hasText && passwordLabel.hasText {
            registerChangeButton.isEnabled = true
        } else {
            registerChangeButton.isEnabled = false
        }
        
        }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        return true
//
    
}



//
//  ViewController.swift
//  TextFieldDelegateTurma351BF
//
//  Created by Michael Bressiani on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var loginChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configElements()
    }

    @IBAction func tapedLoginButton(_ sender: UIButton) {
    }
    
    func configElements() {
        emailTextField.placeholder = "Digite seu e-mail"
        loginTextField.placeholder = "Digite sua senha"
        loginChangeButton.setTitle("Login", for: .normal)
        
        emailTextField.delegate = self
        loginTextField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        textField.layer.borderWidth = 0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}


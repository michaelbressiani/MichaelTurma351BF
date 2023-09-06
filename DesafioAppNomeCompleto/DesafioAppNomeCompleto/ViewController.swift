//
//  ViewController.swift
//  DesafioAppNomeCompleto
//
//  Created by Michael Bressiani on 05/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enderNameTextField: UITextField!
    
    @IBOutlet weak var enderLastNameTextField: UITextField!
    
    @IBOutlet weak var changeButton: UIButton!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

    @IBAction func tappedFullNameButton(_ sender: UIButton) {
        
        if enderNameTextField.text == "" || enderLastNameTextField.text == "" {
            
            fullNameLabel.text = "Preencha ambos os campos"
        } else {
            
            fullNameLabel.text = "\(enderNameTextField.text ?? "") \(enderLastNameTextField.text ?? "")"
        }
    }
    
    func configElements() {
        enderNameTextField.placeholder = "Digita seu nome"
        enderLastNameTextField.placeholder = "Digite seu sobrenome"
        changeButton.setTitle("Nome completo", for: .normal)
        
    }
    

}


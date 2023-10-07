//
//  Tela03ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 07/10/23.
//

import UIKit

class Tela03ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var IrTela04ChangeButton: UIButton!
    @IBOutlet weak var voltarTelaAnteriorChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

    @IBAction func tappedIrTela04Button(_ sender: UIButton) {
        let tela04 = UIStoryboard(name: String(describing: Tela04ViewController.self), bundle: nil).instantiateViewController(identifier: "Tela04ViewController") { coder -> Tela04ViewController? in
            return Tela04ViewController(coder: coder, name: self.nameTextField.text ?? "", lastName: self.lastNameTextField.text ?? "", age: self.ageTextField.text ?? "")
        }
        
        navigationController?.pushViewController(tela04, animated: true)
    }
    
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    func configElements() {
        IrTela04ChangeButton.setTitle("Ir para Tela04", for: .normal)
        voltarTelaAnteriorChangeButton.setTitle("Voltar", for: .normal)
        
        nameTextField.placeholder = "Digite seu nome"
        lastNameTextField.placeholder = "Digite seu sobrenome"
        ageTextField.placeholder = "Digite sua Idade"
    }
}

//
//  ViewController.swift
//  TransicaoDeDadosNovo
//
//  Created by Michael Bressiani on 19/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var sobrenomeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mostrarButton(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: String(describing: Tela02ViewController.self), bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "", sobrenome: self.sobrenomeTextField.text ?? "")
        }
        
        navigationController?.pushViewController(tela02, animated: true)
    }
}



//
//  ViewController.swift
//  Desafio5Ex3Turma351BF
//
//  Created by Michael Bressiani on 16/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var printLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        elementsConfig()
    }

    @IBAction func tappedShowButton(_ sender: Any) {
        printLabel.text = inputTextField.text
    }
    
    func elementsConfig() {
        
        view.backgroundColor = UIColor.lightGray
        
        inputTextField.placeholder = "Digite algo"
        showButton.setTitle("Mostrar", for: .normal)
        showButton.tintColor = UIColor.white
        
        printLabel.text = ""
        printLabel.font = UIFont.boldSystemFont(ofSize: 40)
        
    }
    
}


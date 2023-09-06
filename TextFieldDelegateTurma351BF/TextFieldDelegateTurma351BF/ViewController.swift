//
//  ViewController.swift
//  TextFieldDelegateTurma351BF
//
//  Created by Michael Bressiani on 05/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        
    }
    
    
    @IBAction func tappedChangeButton(_ sender: UIButton) {
        nameLabel.text = "Caio"
        lastNameLabel.text = "Fabrini"
        
        
    }
    
    func configElements() {
        nameLabel.text = "Michael"
//        nameLabel.backgroundColor = .red
//        nameLabel.textColor = UIColor(red: 100, green: 300, blue: 400, alpha: 0.5)
        lastNameLabel.text = "Bressiani"
        changeButton.setTitle("Trocar nomes", for: .normal)
        
    }


}


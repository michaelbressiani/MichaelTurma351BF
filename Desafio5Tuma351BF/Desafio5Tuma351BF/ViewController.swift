//
//  ViewController.swift
//  Desafio5Tuma351BF
//
//  Created by Michael Bressiani on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputValueTextFild: UITextField!
    @IBOutlet weak var setElementChangeButton: UIButton!
    @IBOutlet weak var viewTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        if inputValueTextFild.text != "" && inputValueTextFild.text != nil {
           viewTextLabel.text = inputValueTextFild.text
            view.backgroundColor = UIColor.black
        } else {
            view.backgroundColor = UIColor.yellow
        }
    }
    
    func configElements() {
        
        view.backgroundColor = UIColor.yellow
        
        inputValueTextFild.placeholder = "Digite algo"
        inputValueTextFild.textColor = .purple
        
        viewTextLabel.text = ""
        viewTextLabel.textColor = .white
        viewTextLabel.backgroundColor = .red
        
        setElementChangeButton.setTitle("Clique", for: .normal)
        setElementChangeButton.backgroundColor = .blue
        setElementChangeButton.tintColor = .white
    }
   
}


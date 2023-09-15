//
//  Tela04ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func voltarRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}

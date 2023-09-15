//
//  Tela03ViewController.swift
//  DesafioNavegacao2Turma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
    }
   
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

//
//  Tela06ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 07/10/23.
//

import UIKit

class Tela06ViewController: UIViewController {
    
    @IBOutlet weak var voltarTelaRootChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }

    @IBAction func tappedRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func configElements() {
        voltarTelaRootChangeButton.setTitle("Voltar Tela Inicial", for: .normal)
    }
}

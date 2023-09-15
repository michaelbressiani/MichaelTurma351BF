//
//  Tela02ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var voltarButtonChange: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        voltarButtonChange.backgroundColor = UIColor.blue
        voltarButtonChange.tintColor = UIColor.white
        voltarButtonChange.setTitle("Voltar", for: .normal)
    }
    

    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    

}

//
//  Tela05ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 07/10/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    @IBOutlet weak var irTela06ChangeButton: UIButton!
    @IBOutlet weak var voltarChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    @IBAction func tappedIrTela06Button(_ sender: UIButton) {
        let tela06 = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
        
        navigationController?.pushViewController(tela06 ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func configElements() {
        irTela06ChangeButton.setTitle("Ir Tela06", for: .normal)
        voltarChangeButton.setTitle("Voltar", for: .normal)
    }
}

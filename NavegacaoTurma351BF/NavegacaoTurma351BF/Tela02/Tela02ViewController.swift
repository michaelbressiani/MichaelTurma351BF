//
//  Tela02ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var voltarButtonChange: UIButton!
    
    @IBOutlet weak var irTela03ChangeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        voltarButtonChange.backgroundColor = UIColor.blue
        voltarButtonChange.tintColor = UIColor.white
        voltarButtonChange.setTitle("Voltar", for: .normal)
        
        irTela03ChangeButton.backgroundColor = UIColor.blue
        irTela03ChangeButton.tintColor = UIColor.white
        irTela03ChangeButton.setTitle("Ir Tela03", for: .normal)
    }
    

    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        
//        Modal
//        dismiss(animated: true)
        
        navigationController?.popViewController(animated: true)
        
        
    }
    
    @IBAction func tappedIrTela03Button(_ sender: UIButton) {
        
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        
        navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
    }
    
}

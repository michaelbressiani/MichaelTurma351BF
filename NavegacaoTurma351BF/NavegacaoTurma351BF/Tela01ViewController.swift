//
//  ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var irTela02ChangeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        irTela02ChangeButton.setTitle("Ir para Tela02", for: .normal)
        irTela02ChangeButton.backgroundColor = UIColor.white
        title = "Teste Title"
    }
    
    
    @IBAction func TappedIrTela02Button(_ sender: UIButton) {
        // Esse código identifica a tela e instacia ela (dá vida). Depois do "as?" estamos dizendo qual o tipo da variável tela02.
        // Note que como tela02 é um opcional, então precisamos realizar uma tratativa.
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
        // Modal
//        tela02?.modalPresentationStyle = .fullScreen
//        present(tela02 ?? UIViewController(), animated: true)
        
        // Navegation
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
        
        
        
        
        
    }
    

}


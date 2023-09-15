//
//  Tela02ViewController.swift
//  DesafioNavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var voltarChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        voltarChangeButton.setTitle("Voltar", for: .normal)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        
        //        Modal
                dismiss(animated: true)
        
    }
    
    

}

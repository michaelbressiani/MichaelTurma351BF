//
//  Tela02ViewController.swift
//  DesafioNavegacao2Turma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.orange
    }
    

    @IBAction func voltarTela02Button(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedIrTela03(_ sender: UIButton) {
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        
        
        navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
        
    }
    
}

//
//  ViewController.swift
//  DesafioNavegacao2Turma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.green
    }

    @IBAction func tappedTela02Button(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
        
        navigationController?.pushViewController(tela02 ?? UIViewController(), animated: true)
    }
    
    
}


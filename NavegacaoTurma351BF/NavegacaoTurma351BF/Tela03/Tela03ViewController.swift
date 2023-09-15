//
//  Tela03ViewController.swift
//  NavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    @IBOutlet weak var irTela04ChangeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
    }
    
    @IBAction func tappedIrTela04Button(_ sender: UIButton) {
        let tela04 = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        
        navigationController?.pushViewController(tela04 ?? UIViewController(), animated: true)
    }
    
    
    

}

//
//  ViewController.swift
//  DesafioNavegacaoTurma351BF
//
//  Created by Michael Bressiani on 14/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var fullScreeChangeButton: UIButton!
    
    @IBOutlet weak var defaultChangeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreeChangeButton.setTitle("FullScreen", for: .normal)
        defaultChangeButton.setTitle("Default", for: .normal)
    }

    @IBAction func tappedFullScreenButton(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController

        tela02?.modalPresentationStyle = .fullScreen
        present(tela02 ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedDefaultModalButton(_ sender: UIButton) {
        
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        
        present(tela02 ?? UIViewController(), animated: true)
    }
}


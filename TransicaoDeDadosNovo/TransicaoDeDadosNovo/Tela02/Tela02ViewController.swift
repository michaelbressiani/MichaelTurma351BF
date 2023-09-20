//
//  Tela02ViewController.swift
//  TransicaoDeDadosNovo
//
//  Created by Michael Bressiani on 19/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sobrenomeLabel: UILabel!
    
    var name: String = ""
    var sobrenome: String = ""
    
    init?(coder: NSCoder, name: String, sobrenome: String) {
        self.name = name
        self.sobrenome = sobrenome
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        sobrenomeLabel.text = sobrenome
    }
    

    
}

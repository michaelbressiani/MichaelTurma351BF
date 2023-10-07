//
//  Tela04ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 07/10/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    @IBOutlet weak var transationDataLabel: UILabel!
    @IBOutlet weak var irTela05ChangeButton: UIButton!
    @IBOutlet weak var voltarChangeButton: UIButton!
    
    var name: String = ""
    var lastName: String = ""
    var age:  String = ""
    
    init?(coder: NSCoder, name: String, lastName: String, age: String) {
        self.name = name
        self.lastName = lastName
        self.age = age
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        
    }
    @IBAction func tappedIrTela05Button(_ sender: UIButton) {
        let tela05 = UIStoryboard(name: "Tela05ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController") as? Tela05ViewController
        
        navigationController?.pushViewController(tela05 ?? UIViewController(), animated: true)
    }
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func configElements() {
        irTela05ChangeButton.setTitle("Ir Tela05", for: .normal)
        voltarChangeButton.setTitle("Voltar", for: .normal)
        
        if name == "" || lastName == "" || age == "" {
            transationDataLabel.text = ""
        } else {
            transationDataLabel.text = "Nome completo é \(name) \(lastName) e a idade é \(age)"
        }
        
    }
}

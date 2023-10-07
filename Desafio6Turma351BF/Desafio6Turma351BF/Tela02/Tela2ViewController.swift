//
//  Tela2ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class Tela2ViewController: UIViewController {

    @IBOutlet weak var namesTableView: UITableView!
    @IBOutlet weak var irTela03ChangeButton: UIButton!
    
    var pessoas: [Pessoa] = [Pessoa(nome: "Daenerys", ultimoNome: "Targaryen", fotoNome: "daenerys"),
    Pessoa(nome: "Natasha", ultimoNome: "Romanoff", fotoNome: "natasha"),
    Pessoa(nome: "Robin", ultimoNome: "Scherbatsky", fotoNome: "robin")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    @IBAction func tappedIrTela03Button(_ sender: UIButton) {
        let tela03 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        
        navigationController?.pushViewController(tela03 ?? UIViewController(), animated: true)
    }
    
    
    func configElements() {
        irTela03ChangeButton.setTitle("Ir para Tela03", for: .normal)
        namesTableView.delegate = self
        namesTableView.dataSource = self
        namesTableView.register(Ex2ViewCell.nib(), forCellReuseIdentifier: Ex2ViewCell.identifier)
    }
}

extension Tela2ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Ex2ViewCell.identifier, for: indexPath) as? Ex2ViewCell
        
        cell?.setupCell(pessoa: pessoas[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 1.0, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor(red: 1.0, green: 0.8, blue: 0.8, alpha: 1.0)
        }
    }
}

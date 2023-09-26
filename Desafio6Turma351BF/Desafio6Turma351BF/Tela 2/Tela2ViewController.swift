//
//  Tela2ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class Tela2ViewController: UIViewController {

    @IBOutlet weak var namesTableView: UITableView!
    
    var pessoas: [Pessoa] = [Pessoa(nome: "Daenerys", ultimoNome: "Targaryen", fotoNome: "daenerys"),
    Pessoa(nome: "Natasha", ultimoNome: "Romanoff", fotoNome: "natasha"),
    Pessoa(nome: "Robin", ultimoNome: "Scherbatsky", fotoNome: "robin")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements() {
        namesTableView.delegate = self
        namesTableView.dataSource = self
        namesTableView.register(Ex2ViewCell.nib(), forCellReuseIdentifier: Ex2ViewCell.identifier)
    }
}

extension Tela2ViewController: UITableViewDelegate {
    
}

extension Tela2ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Ex2ViewCell.identifier, for: indexPath) as? Ex2ViewCell
        
        cell?.setupCell(pessoa: pessoas[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
}

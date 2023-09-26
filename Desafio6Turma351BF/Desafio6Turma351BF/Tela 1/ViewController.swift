//
//  ViewController.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frutasTableView: UITableView!
    
    @IBOutlet weak var irEx2ChangeButton: UIButton!
    
    
    var frutas: [Fruta] = [Fruta(nome: "Laranja"),
                           Fruta(nome: "Uva"),
                           Fruta(nome: "Maçã"),
                           Fruta(nome: "Banana"),
                           Fruta(nome: "Manga"),
                           Fruta(nome: "Pera")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    func configElements() {
        irEx2ChangeButton.setTitle("Ir para exercício 2", for: .normal)
        frutasTableView.delegate = self
        frutasTableView.dataSource = self
        frutasTableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    @IBAction func tappedEx2Button(_ sender: UIButton) {
        let tela2 = UIStoryboard(name: "Tela2ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela2ViewController") as? Tela2ViewController
        
        navigationController?.pushViewController(tela2 ?? UIViewController(), animated: true)
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        
        cell?.setupCell(frutas: frutas[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
}




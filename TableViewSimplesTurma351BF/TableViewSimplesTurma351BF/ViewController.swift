//
//  ViewController.swift
//  TableViewSimplesTurma351BF
//
//  Created by Michael Bressiani on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Person] = [Person(name: "Michael", lastName: "Bressiani")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    // Número de linhas por sessão
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // Método responsavel por popular (dar vida) a celula(parte de visualização)
    // Este metodo disparar a quantidade de vezes informado no numberOfRowsInSection. Então se caso informei 10 vezes, o cellForRowAt será
    // disparado 10 vezes, pois ele precisar criar as 10 celulas.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}



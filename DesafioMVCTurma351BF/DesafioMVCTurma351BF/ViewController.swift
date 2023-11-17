//
//  ViewController.swift
//  DesafioMVCTurma351BF
//
//  Created by Michael Bressiani on 24/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cells: Cell1 = Cell1(title: "Entenda melhor o processo de autorização", description: "Determinados procedimentos necessitam da validação prévia. Clique em saiba mais, para conhecer o processo de autorização", knowMore: "Saiba mais", image1: UIImage(named: "image") ?? UIImage())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        title = " Autorização de Procedimento"
    }

    func configTableView() {
        tableView.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell1.nib(), forCellReuseIdentifier: TableViewCell1.identifier)
        tableView.register(TableViewCell2.nib(), forCellReuseIdentifier: TableViewCell2.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell1.identifier, for: indexPath) as? TableViewCell1
            cell?.setupCell1(data: cells)
            return cell ?? UITableViewCell()
    }
}
    
    


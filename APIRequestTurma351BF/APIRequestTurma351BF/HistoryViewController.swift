//
//  ViewController.swift
//  APIRequestTurma351BF
//
//  Created by Michael Bressiani on 16/11/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel: HistoryViewModel = HistoryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.fetchHistoryMock()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(data: viewModel.getHistoryAccountList(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
}

extension HistoryViewController: HistoryViewModelProtocol {
    func errorRequest() {
        // exibir alert
    }
    
    func successRequest() {
     configTableView()
    }
}




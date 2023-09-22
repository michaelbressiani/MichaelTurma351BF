//
//  ViewController.swift
//  DesafioNomesCarrosTableViewTurma351BF
//
//  Created by Michael Bressiani on 21/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameCarTableView: UITableView!
    
    var cars: [Car] = [Car(nameCar: "BMW", nameImage: "bmw"),
                       Car(nameCar: "citroen", nameImage: "citroen"),
                       Car(nameCar: "honda", nameImage: "honda"),
                       Car(nameCar: "kia", nameImage: "kia"),
                       Car(nameCar: "renault", nameImage: "renault")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    
    func configTableView() {
        nameCarTableView.delegate = self
        nameCarTableView.dataSource = self
        nameCarTableView.register(NameCarTableViewCell.nib(), forCellReuseIdentifier: NameCarTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameCarTableViewCell.identifier, for: indexPath) as? NameCarTableViewCell
        cell?.setupCell(car: cars[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}

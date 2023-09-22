//
//  NameCarTableViewCell.swift
//  DesafioNomesCarrosTableViewTurma351BF
//
//  Created by Michael Bressiani on 21/09/23.
//

import UIKit

class NameCarTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCarImageView: UIImageView!
    @IBOutlet weak var nameCarLabel: UILabel!
    
    static let identifier: String = "NameCarTableViewCell"

    static func nib() -> UINib {
    return UINib(nibName: identifier, bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameCarLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        }
    
    func setupCell(car: Car) {
        nameCarLabel.text = car.nameCar
        imageCarImageView.image = UIImage(named: car.nameImage)
        }
    
    
}

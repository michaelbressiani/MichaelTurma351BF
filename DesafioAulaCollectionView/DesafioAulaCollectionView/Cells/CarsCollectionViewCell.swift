//
//  CarsCollectionViewCell.swift
//  DesafioAulaCollectionView
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var nameCarLabel: UILabel!
    
    static let identifier: String = "CarsCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        nameCarLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        carImageView.contentMode = .scaleToFill

        }
    
    func setupCell(car: Car) {
        nameCarLabel.text = car.nameCar
        carImageView.image = UIImage(named: car.nameImage)
        }
    
    

}

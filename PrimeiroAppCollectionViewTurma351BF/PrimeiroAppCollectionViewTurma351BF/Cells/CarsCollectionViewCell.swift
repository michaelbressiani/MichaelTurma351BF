//
//  CarsCollectionViewCell.swift
//  PrimeiroAppCollectionViewTurma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carsImageView: UIImageView!
    static let identifier: String = "CarsCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(nameImage: String) {
        carsImageView.image = UIImage(named: nameImage)
    }

}

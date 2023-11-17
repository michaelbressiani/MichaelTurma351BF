//
//  TableViewCell2.swift
//  DesafioMVCTurma351BF
//
//  Created by Michael Bressiani on 24/10/23.
//

import UIKit

class TableViewCell2: UITableViewCell {
    
    @IBOutlet weak var perfilImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var codigoLabel: UILabel!
    
    static let identifier: String = String(describing: TableViewCell2.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell1(data: Cell2) {
        nameLabel.text = data.name
        codigoLabel.text = data.codigo
        perfilImage.image = data.image2
    }
}

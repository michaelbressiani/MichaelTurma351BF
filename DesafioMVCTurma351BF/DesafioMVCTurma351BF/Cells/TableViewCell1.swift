//
//  TableViewCell.swift
//  DesafioMVCTurma351BF
//
//  Created by Michael Bressiani on 24/10/23.
//

import UIKit

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var fundoView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var knowMoreLabel: UILabel!
    @IBOutlet weak var imagePageImage: UIImageView!
    
    @IBOutlet weak var setaImage: UIImageView!
    
    static let identifier: String = String(describing: TableViewCell1.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fundoView.backgroundColor = .white
        backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        // Initialization code
    }
    
    func setupCell1(data: Cell1) {
        titleLabel.text = data.title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        descriptionLabel.text = data.description
        descriptionLabel.font = UIFont.systemFont(ofSize: 12)
        knowMoreLabel.text = data.knowMore
        knowMoreLabel.font = UIFont.boldSystemFont(ofSize: 12)
        imagePageImage.image = data.image1
//        setaImage.image = data.seta
    }
}

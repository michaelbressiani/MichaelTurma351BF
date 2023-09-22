//
//  NameTableViewCell.swift
//  TableViewSimplesTurma351BF
//
//  Created by Michael Bressiani on 21/09/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    static let identifier: String = "NameTableViewCell"

        static func nib() -> UINib {
            return UINib(nibName: identifier, bundle: nil)
        }
    
    // Esse é um metodo de ciclo de vida da celula como se fosse o viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
            nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            lastNameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        }
    
    func setupCell(person: Person) {
        nameLabel.text = person.name
        lastNameLabel.text = person.lastName
        
//        personImageView.image = person.imageName
        }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    
    
}

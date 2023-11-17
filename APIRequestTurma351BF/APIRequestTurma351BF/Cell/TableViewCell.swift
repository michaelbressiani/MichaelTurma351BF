//
//  TableViewCell.swift
//  APIRequestTurma351BF
//
//  Created by Michael Bressiani on 16/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    static let identifier: String = String(describing: TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    public func setupCell(data: Pessoa) {
        nameLabel.text = data.nome
        ageLabel.text = String(data.idade)
        lastNameLabel.text = data.sobrenome
        professionLabel.text = data.profissao
        
    }
    
}

//
//  TableViewCell.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var frutasLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        frutasLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    func setupCell(frutas: Fruta) {
        frutasLabel.text = frutas.nome
    }
    
}

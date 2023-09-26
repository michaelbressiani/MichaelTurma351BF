//
//  Ex2ViewCell.swift
//  Desafio6Turma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class Ex2ViewCell: UITableViewCell {
    
    @IBOutlet weak var fotoPessoaImageView: UIImageView!
    @IBOutlet weak var primeiroNomeLabel: UILabel!
    @IBOutlet weak var ultimoNomeLabel: UILabel!
    
    static let identifier: String = "Ex2ViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "Ex2ViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        primeiroNomeLabel.font = UIFont.systemFont(ofSize: 16)
        ultimoNomeLabel.font = UIFont.systemFont(ofSize: 16)
    }
    
    func setupCell(pessoa: Pessoa) {
        primeiroNomeLabel.text = pessoa.nome
        ultimoNomeLabel.text = pessoa.ultimoNome
        fotoPessoaImageView.image = UIImage(named: pessoa.fotoNome)
    }
}

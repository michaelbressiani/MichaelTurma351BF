//
//  ViewController.swift
//  PrimeiroAppCollectionViewTurma351BF
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var cars: [String] = ["car1","car2","car3","car4","car5","car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        
        collectionView.register(CarsCollectionViewCell.nib(), forCellWithReuseIdentifier: CarsCollectionViewCell.identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsCollectionViewCell.identifier, for: indexPath) as? CarsCollectionViewCell
        cell?.setupCell(nameImage: cars[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Quando queremos colocar as proporções iguais a do proprio device de largura utilizamos o -> collectionView.frame.width
        // Quando queremos colocar as proporções iguais a do proprio device de altura utilizamos o -> collectionView.frame.height
        // Quando queremos colocar proporções fixas ou varidas de acordo com o index podemos simplesmente passar o valor correspondente no height e no width
        
        // Proporções de acordo com o layout
              return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
        // Proporções fixas
//            return CGSize(width: 500, height: 500)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(cars[indexPath.row])
    }
}


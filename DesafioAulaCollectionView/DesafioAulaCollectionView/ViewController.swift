//
//  ViewController.swift
//  DesafioAulaCollectionView
//
//  Created by Michael Bressiani on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var cars: [Car] = [Car(nameCar: "car1", nameImage: "car1"),
                          Car(nameCar: "car2", nameImage: "car2"),
                          Car(nameCar: "car3", nameImage: "car3"),
                          Car(nameCar: "car4", nameImage: "car4"),
                          Car(nameCar: "car5", nameImage: "car5"),
                          Car(nameCar: "car6", nameImage: "car6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        cell?.setupCell(car: cars[indexPath.row])
        return cell ?? UICollectionViewCell()

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
//            return CGSize(width: 700, height: 300)
    }
    
}


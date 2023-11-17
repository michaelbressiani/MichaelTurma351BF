//
//  ViewController.swift
//  NotificationCenterProtocolsTurma351BF
//
//  Created by Michael Bressiani on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoAppleImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var clickHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        //        configObserver()
    }
    
    //    func configObserver() {
    //        NotificationCenter.default.addObserver(self, selector: #selector(changeMacbook), name: .macbook, object: nil)
    //        
    //        NotificationCenter.default.addObserver(self, selector: #selector(changeImac), name: .imac, object: nil)
    //    }
    
    //    @objc func changeMacbook(_ notification: NSNotification) {
    ////        let image = notification.object as? UIImage
    //        logoAppleImageView.image = UIImage(named: "macbook_pro")
    //        textLabel.text = "Macbook pro"
    //        view.backgroundColor = .red
    //    }
    //    
    //    @objc func changeImac(_ notification: NSNotification) {
    ////        let color = notification.object as? String
    //        logoAppleImageView.image = UIImage(named: "imac_pro")
    //        textLabel.text = "Imac pro"
    //        view.backgroundColor = .purple
    // }
    
    func tappedClickHereButton(_ sender: UIButton) {
        let tela02 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        tela02?.modalPresentationStyle = .fullScreen
        tela02?.delegate = self
        present(tela02 ?? UIViewController(), animated: true)
    }
    
    func configElements() {
        clickHereButton.setTitle("Clique Aqui", for: .normal)
    }
}

extension ViewController: Tela02ControllerProtocol {
    func actionMacbook() {
        logoAppleImageView.image = UIImage(named: "macbook_pro")
        textLabel.text = "Macbook pro"
        view.backgroundColor = .red
    }
    
    func actionImac() {
        logoAppleImageView.image = UIImage(named: "imac_pro")
        textLabel.text = "Imac pro"
        view.backgroundColor = .purple
    }
}

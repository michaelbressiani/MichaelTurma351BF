//
//  Tela02ViewController.swift
//  NotificationCenterProtocolsTurma351BF
//
//  Created by Michael Bressiani on 10/10/23.
//

import UIKit

protocol Tela02ControllerProtocol: AnyObject {
    func actionMacbook()
    func actionImac()
}

class Tela02ViewController: UIViewController {

    @IBOutlet weak var optionLabel: UILabel!
    
    @IBOutlet weak var monitorButton: UIButton!
    
    @IBOutlet weak var imacButton: UIButton!
    
    weak var delegate: Tela02ControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()

    }
    
    @IBAction func tappedMonitorButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .macbook, object: nil)
        delegate?.actionMacbook()
        dismiss(animated: true)
    }
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.actionImac()
        dismiss(animated: true)
    }
    func configElements() {

        view.backgroundColor = .black

    }
    


}

//
//  ViewController.swift
//  ScrollView
//
//  Created by Michael Bressiani on 14/10/23.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1000)
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        print("Oi")
    }
    
}


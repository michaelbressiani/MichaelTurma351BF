//
//  TabBarViewController.swift
//  DasafioTabBarTurma351BF
//
//  Created by Michael Bressiani on 03/10/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addControllers()
        configLayout()
    }
    
    func addControllers() {
        let firstVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela01ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela01ViewController") as? Tela01ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 01", image: UIImage(systemName: "pencil.circle.fill"), tag: 0)
            return nav
        }()
        
        let secondVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 02", image: UIImage(systemName: "rectangle.portrait.and.arrow.right.fill"), tag: 1)
            return nav
        }()
        
        let thirdVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 03", image: UIImage(systemName: "trash.slash.circle.fill"), tag: 2)
            return nav
        }()
        
        let fourthVC: UINavigationController = {
            let vc = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
            let nav = UINavigationController(rootViewController: vc ?? UIViewController())
            nav.tabBarItem = UITabBarItem(title: "Tela 04", image: UIImage(systemName: "trash.slash.circle.fill"), tag: 3)
            return nav
        }()
        
        viewControllers = [firstVC, secondVC, thirdVC, fourthVC]
    }
    
    func configLayout() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
}

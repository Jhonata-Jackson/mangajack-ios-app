//
//  ViewController.swift
//  MangaJack
//
//  Created by Jhonata Jackson on 09/12/24.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
                
        self.setupViewControllers()
    }
    
    func setupViewControllers() {
        let homeVC = UINavigationController(rootViewController: HomeVC())
        let exploreVC = UINavigationController(rootViewController: ExploreVC())
        let libraryVC = UINavigationController(rootViewController: LibraryVC())
        let settingsVC = UINavigationController(rootViewController: SettingsVC())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        exploreVC.tabBarItem.image = UIImage(systemName: "eyeglasses")
        libraryVC.tabBarItem.image = UIImage(systemName: "books.vertical.fill")
        settingsVC.tabBarItem.image = UIImage(systemName: "gearshape")
        
        tabBar.tintColor = .label
        
        self.setViewControllers([homeVC, exploreVC, libraryVC, settingsVC], animated: true)
    }
}


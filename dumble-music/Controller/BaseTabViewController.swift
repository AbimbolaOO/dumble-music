//
//  TabViewController.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class BaseTabViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
//            createView(viewController: UIViewController(), title: "PlayList", imageName: "search"),
            createView(viewController: HomeViewController(), title: "Home", imageName: "search"),
            createView(viewController: SearchViewController(), title: "Search", imageName: "search"),
            createView(viewController: PlaylistViewController(), title: "Playlist", imageName: "search"),
            createView(viewController: UIViewController(), title: "Downloads", imageName: "search")
        ]
        tabBar.tintColor = .white
        tabBar.barTintColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
    }
    
    let viewController = UIViewController()
    func createView(viewController: UIViewController, title:String, imageName: String)->UIViewController{
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = UIImage(named: imageName)
        navigationController.navigationBar.barStyle = .black
        return navigationController
    }
}

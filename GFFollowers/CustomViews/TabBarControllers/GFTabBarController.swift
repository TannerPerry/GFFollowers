//
//  GFTabBarController.swift
//  GFFollowers
//
//  Created by Tanner Perry on 9/26/22.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSeachNavigationController(), createFavoriteNavigationController()]

    }
    
    func createSeachNavigationController() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoriteNavigationController() -> UINavigationController {
        let favoriteVC = FavoriteListViewController()
        favoriteVC.title = "Favotites"
        favoriteVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoriteVC)
    }

}

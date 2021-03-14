//
//  SceneDelegate.swift
//  collwithtbl
//
//  Created by R on 02/07/1442 AH.
//  Copyright © 1442 R. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        func createVC() -> UINavigationController {
            // we create the view controller and insert into the nav controller and return
            let searchVC = ViewController()
            searchVC.title = "التسوق"
            // it is a system tabbaritem , tag zero because it is the first one
            searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
            return UINavigationController(rootViewController: searchVC)
        }

        func createVC1() -> UINavigationController {
            let favoritesListVC = VC()
            favoritesListVC.title = "الطلبات"
            // it is a system tabbaritem , tag zero because it is the first one
            favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
            return UINavigationController(rootViewController: favoritesListVC)
        }
        
        func createVC2() -> UINavigationController {
            let favoritesListVC = VC2()
            favoritesListVC.title = "الرسائل"
            // it is a system tabbaritem , tag zero because it is the first one
            favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
            return UINavigationController(rootViewController: favoritesListVC)
        }
        
        func createVC3() -> UINavigationController {
            let favoritesListVC = VC3()
            favoritesListVC.title = "المزيد"
            // it is a system tabbaritem , tag zero because it is the first one
            favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
            return UINavigationController(rootViewController: favoritesListVC)
        }
        
        func createtabbar() -> UITabBarController {
            let tabbar = UITabBarController()
            // here we assign a tint to all our tabbars, this will be visible on the items (icons)
            UITabBar.appearance().tintColor = .cyan
            // replace our array variables with the functions we created
            tabbar.viewControllers = [createVC(), createVC1(),createVC2(), createVC3()]
            return tabbar
        }

        guard let ws = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: ws.coordinateSpace.bounds)
        window?.windowScene = ws
        window?.makeKeyAndVisible()
        window?.rootViewController = createtabbar()
        
        
        


//        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


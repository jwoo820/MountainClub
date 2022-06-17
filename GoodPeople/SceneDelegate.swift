//
//  SceneDelegate.swift
//  GoodPeople
//
//  Created by Park Jungwoo on 2022/06/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
    
        window = UIWindow(windowScene: windowScene)
        
        let rootViewController = LoginViewController()
        let rootNavigationControler = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = rootNavigationControler
        window?.makeKeyAndVisible()
        
    }

}


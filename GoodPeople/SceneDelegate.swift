//
//  SceneDelegate.swift
//  GoodPeople
//
//  Created by Park Jungwoo on 2022/06/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // logged in app user's details
    var appUser: [String: String]? = [
        "name": "jwoo820",
        "password": "abcd",
        "id": "1"
    ]

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        if(appUser != nil) {
            window?.rootViewController = TabBarController()
            window?.makeKeyAndVisible()
        } else {
            window?.rootViewController = LoginViewController()
            window?.makeKeyAndVisible()
        }
        window?.backgroundColor = .systemBackground
        window?.tintColor = .label
        
    }

}


//
//  MainTabBarController.swift
//  GoodPeople
//
//  Created by Park Jungwoo on 2022/06/17.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let reservationViewController = UINavigationController(rootViewController: ReservationViewController())
        reservationViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "map"),
            selectedImage: UIImage(systemName: "map.fill")
        )
        
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
    }
}

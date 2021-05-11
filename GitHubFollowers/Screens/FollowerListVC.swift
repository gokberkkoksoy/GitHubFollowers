//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 9.05.2021.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMessage in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Oops!", message: errorMessage!.rawValue, buttonTitle: "OK")
                return
            }
            print("Followers.count == \(followers.count)")
            print(followers)
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

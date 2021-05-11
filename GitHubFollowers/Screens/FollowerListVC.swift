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
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case.success(let followers):
                print(followers)
                
            case.failure(let error):
                self.presentGFAlertOnMainThread(title: "Oops!", message: error.rawValue, buttonTitle: "OK")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

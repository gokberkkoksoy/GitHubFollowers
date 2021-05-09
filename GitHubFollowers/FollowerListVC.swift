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
        navigationController?.isNavigationBarHidden = false
        
    }
}

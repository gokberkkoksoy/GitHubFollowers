//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 17.05.2021.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        print(username!)
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }
    


}

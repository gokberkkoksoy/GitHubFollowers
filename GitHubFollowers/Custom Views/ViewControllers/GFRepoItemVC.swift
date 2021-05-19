//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 20.05.2021.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoView1.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoView2.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}

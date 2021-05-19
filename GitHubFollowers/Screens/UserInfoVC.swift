//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 17.05.2021.
//

import UIKit

class UserInfoVC: UIViewController {
    
    let headerView = UIView()
    let itemView1 = UIView()
    let itemView2 = UIView()
    var itemViews = [UIView]()
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        layoutUI()
        getUserInfo()
        
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    func getUserInfo() {
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self.add(childVC: GFUserInfoHeaderVC(user: user), to: self.headerView)
                    self.add(childVC: GFRepoItemVC(user: user), to: self.itemView1)
                    self.add(childVC: GFFollowerItemVC(user: user), to: self.itemView2)
                }
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong.", message: error.rawValue, buttonTitle: "OK")
            }
        }

    }
    
    func layoutUI() {
        let padding: CGFloat = 20
        let itemHeight:CGFloat = 140
        
        itemViews = [headerView, itemView1, itemView2]
        
        for itemView in itemViews {
            view.addSubview(itemView)
            itemView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                itemView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
                itemView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            ])
        }
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 180),
            
            itemView1.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: padding),
            itemView1.heightAnchor.constraint(equalToConstant: itemHeight),
            
            itemView2.topAnchor.constraint(equalTo: itemView1.bottomAnchor, constant: padding),
            itemView2.heightAnchor.constraint(equalToConstant: itemHeight)
        ])
    }
    
    func add(childVC: UIViewController, to containerView: UIView) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }
    
}

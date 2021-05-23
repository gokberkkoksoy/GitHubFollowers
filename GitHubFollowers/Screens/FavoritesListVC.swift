//
//  FavoritesListVC.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 7.05.2021.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}

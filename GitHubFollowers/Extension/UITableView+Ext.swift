//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 12.07.2021.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}

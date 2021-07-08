//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 8.07.2021.
//

import UIKit
extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}

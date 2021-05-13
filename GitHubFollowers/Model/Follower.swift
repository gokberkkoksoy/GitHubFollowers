//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 10.05.2021.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}

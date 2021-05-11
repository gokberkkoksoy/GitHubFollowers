//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 12.05.2021.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created invalid result. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    
}

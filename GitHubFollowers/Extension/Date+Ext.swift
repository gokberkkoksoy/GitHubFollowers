//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Gökberk Köksoy on 20.05.2021.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}

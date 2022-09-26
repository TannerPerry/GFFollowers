//
//  Date+Ext.swift
//  GFFollowers
//
//  Created by Tanner Perry on 9/20/22.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormtter = DateFormatter()
        dateFormtter.dateFormat = "MMM YYYY"
        
        return dateFormtter.string(from: self)
    }
    
}

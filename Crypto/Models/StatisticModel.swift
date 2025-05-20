//
//  StatisticModel.swift
//  Crypto
//
//  Created by dofxmine on 18.05.2025.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let persentageChange: Double?
    
    init(title: String, value: String, persentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.persentageChange = persentageChange
    }
}


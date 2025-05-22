//
//  String.swift
//  Crypto
//
//  Created by dofxmine on 22.05.2025.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

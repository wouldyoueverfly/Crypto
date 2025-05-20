//
//  UIApplication.swift
//  Crypto
//
//  Created by dofxmine on 18.05.2025.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}

//
//  XMarkButton.swift
//  Crypto
//
//  Created by dofxmine on 20.05.2025.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })

    }
}

#Preview {
    XMarkButton()
}

//
//  SimpleButtonView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 06-08-24.
//

import SwiftUI

struct SimpleButtonView: View {

    var icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(systemName: icon)
        })
    }
}

#Preview {
    SimpleButtonView(icon: "person") {}
}

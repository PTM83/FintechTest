//
//  IconHeaderView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct IconHeaderView: View {
    var iconHeader: Array<String> = ["bell","questionmark.circle"]
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "text.alignleft")
                .font(.system(size: 25))
            
            Circle()
                .stroke(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, lineWidth: 2)
                .frame(width: 40, height: 40)
            
            Text("Hola PABLO")
                .font(.system(size: 25))
            
            Spacer()
            
            
            ForEach(iconHeader, id: \.self) { icon in
                Image(systemName: icon)
            }
            .font(.system(size: 25))
            
        }
        .padding()
        .padding(.bottom, 50)
        .foregroundColor(CustomColors.letterColor.toSwiftColor())
        .background(CustomColors.primaryColor.toSwiftColor())
    }
}

#Preview {
    IconHeaderView()
}

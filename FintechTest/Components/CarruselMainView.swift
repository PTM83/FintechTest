//
//  CarruselMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 05-08-24.
//

import SwiftUI

struct CarruselMainView: View {
    
    var textTitle: String
    @State var principalColor: Color = CustomColors.primaryColor.toSwiftColor()
    @State var letterColor: Color = CustomColors.digitColor.toSwiftColor()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text(textTitle)
                .font(.system(size: 20, weight: .light, design: .rounded))
                .foregroundColor(letterColor)
                .kerning(1.4)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(IconApp.carruselMainView, id: \.0) {
                        text, icon in Button(action: {},
                                             label: {
                            ItemView(icon: icon,
                                     text: text,
                                     mainColor: principalColor)
                        })
                            
                    }
                }
            }
        }
    }
    
    struct ItemView: View {
        let icon: String
        let text: String
        var mainColor: Color
        
        var body: some View {
            VStack(alignment: .leading) {
                Image(systemName: icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundStyle(mainColor)
                    .padding([.leading, .top], 5)
                Text(text)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .kerning(1.2)
                    .foregroundStyle(.black)
                    .padding([.leading, .trailing, .bottom],8)
                    .multilineTextAlignment(.leading)
            }
            .frame(width: 120, height: 120)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
        }
    }
    
}

#Preview {
    CarruselMainView(textTitle: "Test View")
}

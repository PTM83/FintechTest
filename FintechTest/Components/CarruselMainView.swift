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
            VStack(alignment: .leading, spacing:5) {
                Image(systemName: icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40,alignment: .center)
                    .foregroundStyle(mainColor)
                Text(text)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .kerning(1.2)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)
//                    .padding([.leading, .trailing, .bottom],8)
                    .frame(width: 130, height: 50, alignment: .topLeading)
            }
            .frame(width: 130, height: 80)
            .padding(12)
            .background(Color.blue.opacity(0.3))
            .cornerRadius(10)
        }
    }
    
}

#Preview {
    CarruselMainView(textTitle: "Test View")
}

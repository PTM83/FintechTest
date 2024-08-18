//
//  CustomBarView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 16-08-24.
//

import SwiftUI

struct CustomBarView: View {
    
    @Binding var selectedTab: Int
    let mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(mainColor)
                .frame(maxWidth: .infinity)
                .overlay(
                    CustomItemHeaderView(selectedTab: $selectedTab)
                        .padding(.top,40)
                )
        }
        .frame(height:110)
        
    }
}

#Preview {
    VStack{
        CustomBarView(selectedTab: .constant(0))
        Spacer()
    }
}

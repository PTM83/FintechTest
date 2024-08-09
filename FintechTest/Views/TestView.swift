//
//  TestView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.
//

import SwiftUI

struct TestView: View {
    var mainColor:Color = CustomColors.primaryColor.toSwiftColor()
    var letterColor:Color = CustomColors.letterColor.toSwiftColor()
    
    var body: some View {
        
        VStack{
            Text("Test View")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundStyle(letterColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(mainColor)
        }
//        .toolbarBackground(mainColor, for: .automatic)
//        .toolbarBackground(.visible, for: .navigationBar)
        
    }
}

#Preview {
    TestView()
}

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
                .frame(maxWidth: .infinity)
                .frame(height: 600)
                .background(mainColor)
        }
        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
        .navigationTitle("Centro de ayuda")
        .toolbarBackground(letterColor, for: .automatic)
        .toolbarBackground(.visible, for: .navigationBar)
        
    }
}

#Preview {
    TestView()
}

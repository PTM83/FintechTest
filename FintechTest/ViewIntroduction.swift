//
//  ContentView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 29-07-24.
//

import SwiftUI

struct ViewIntroduction: View {
    
    var body: some View {
        
        ZStack(alignment: .center) {
            ContainerRelativeShape()
            CustomColors.primaryColor.toSwiftColor()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Insert your PIN")
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .padding(.bottom, 32)
                
                HStack {
                    ForEach(0..<4) { _ in
                        Image(systemName: "circle")
                    }
                }
                
                Spacer(minLength: 220)
                
                DigitPasswordView(items: CustomElements.elements, letterColor: CustomColors.letterColor.toSwiftColor())
                
                Spacer()
                
                Button(action: {
                    print("")
                },
                       label: {
                    Text("Forget my PIN")
                        .font(.system(size: 20,
                                      weight: .medium,
                                      design: .rounded)
                        )
                })
            }
            .padding()
        }.foregroundColor(CustomColors.letterColor.toSwiftColor())
    }
}


#Preview {
    ViewIntroduction()
}



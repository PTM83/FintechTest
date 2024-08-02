//
//  ContentView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 29-07-24.
//

import SwiftUI

struct ViewIntroduction: View {
    @State private var enteredDigit:Array<Int> = []
    
    var body: some View {
        print("ViewIntroduction body is being rendered")
        return ZStack(alignment: .center) {
            ContainerRelativeShape()
            CustomColors.primaryColor.toSwiftColor()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                CheckPasswordView(enteredDigits: $enteredDigit,topText: "Insert your PIN")

                Spacer(minLength: 110)
                
                DigitPasswordView(items: CustomElements.elements, letterColor: CustomColors.letterColor.toSwiftColor(), enteredDigit: $enteredDigit)
                
                Spacer()
                
                Button(action: {
                    print("DEBE HACER ALGO")
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


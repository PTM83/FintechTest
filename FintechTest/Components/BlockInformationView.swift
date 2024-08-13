//
//  BlockInformationView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 13-08-24.
//

import SwiftUI

struct BlockInformationView: View {
    
    var secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    var letterColor:Color = CustomColors.digitColor.toSwiftColor()
    
    @State var testHeight: CGFloat = 0.0
    @State var numberAccount: String = "7770 12 345 678"
    @State var balanceAccount: Int = 15_953
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(mainColor)
            .frame(height: 125 + testHeight)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(secondaryColor)
                .frame(maxWidth: .infinity,
                       maxHeight: 160 + testHeight,
                       alignment: .center)
                .padding()
                .shadow(color: .gray, radius: 2, x: 0, y: 0)
            
            VStack(alignment: .leading, spacing: 0.1) {
                TopInformationView(account: $numberAccount, letterColor: letterColor)
                
                BottomInformationView(balance: $balanceAccount, mainColor: mainColor)
                
                VStack {
                    Divider()
                        .padding(.horizontal)
                    
                    NavigationLink(destination: TestView(),
                                   label: {
                        Text("Ver mis movimientos")
                            .frame(alignment: .center)
                            .foregroundStyle(mainColor)
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                    })
                }
                
                
            }
            .padding()

        }
    }
}

#Preview {
    BlockInformationView()
}

struct TopInformationView: View {

    @Binding var account: String
    var letterColor: Color
    
    var body: some View {

        HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Mi cuenta MACH")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                    
                    Text("Cuenta Corriente BCI \(account)")
                        .font(.system(size: 10, weight: .light, design: .rounded))
                    
                }
                .kerning(1.4)
                
                Spacer()
                
                NavigationLink(destination: TestView(),
                               label: {
                    Image(systemName: IconApp.sharedInformation)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .rotationEffect(Angle(degrees: -20))
                        
                })
            }
            .foregroundStyle(letterColor)
            .padding()
    }
}

struct BottomInformationView: View {
    
    @Binding var balance: Int
    var mainColor: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Saldo disponible")
            
            HStack(spacing: 1) {
                Image(systemName: "dollarsign")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height:15)
                Text("\(balance)")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
            }
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
        .padding(.horizontal)
        .foregroundStyle(mainColor)
    }
}

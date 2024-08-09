//
//  TransferView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 06-08-24.
//

import SwiftUI

struct TransferView: View {
    
    var primaryColor: Color = CustomColors.primaryColor.toSwiftColor()
    var secondaryColor:Color = CustomColors.letterColor.toSwiftColor()
    
    private let columns = [
        GridItem(.flexible(), spacing:20),
        GridItem(.flexible(), spacing:20),
        GridItem(.flexible(), spacing:20)
    ]
    
    let digitColor: Color = CustomColors.digitColor.toSwiftColor()
    
    var body: some View {
        
        
        
        ToolBarView(nameView:"Transferencia", iconView: "questionmark.circle") {
            TestView()
        } content: {
//            Contenido de la Vista
            
            VStack{
                Text("¿Qué quieres hacer hoy?")
                    .foregroundStyle(digitColor)
                    .padding()
                
                BlockPutInformationView(percentWidth: 0.07, percentHeight: 0.86, xPosition: 0, yPosition: 0, shadowColor: digitColor)
                
                
                
                Text("Otras formas de transferir")
                    
                    .padding(10)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(IconApp.wayTransfer, id: \.0) { description, iconName  in
                        WayofTransferView(iconName: iconName, description: description)
                        
                    }
                }.padding()
                Spacer()
            }.foregroundStyle(digitColor)
                .font(.system(size: 25, weight: .light, design: .rounded))
            
        }
    }
}

#Preview {
    TransferView()
}

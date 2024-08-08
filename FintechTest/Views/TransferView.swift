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
    
    var body: some View {
//        NavigationView {
//            VStack {
//                Text("Transferencia")
//                
//                
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Text("Transferencias")
//                    
//                }
//                
//                ToolbarItem(placement: .topBarTrailing) {
//                    NavigationLink(destination: IconHeaderView()){
//                        Image(systemName: "questionmark.circle")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 25, height: 25)
//                    }
//                }
//                
//            }
//            .foregroundColor(secondaryColor)
//            .font(.system(size: 25,
//                          weight: .medium, 
//                          design: .rounded))
//            .toolbarBackground(primaryColor, for: .automatic)
//            .toolbarBackground(.visible, for: .navigationBar)
//            .padding()
//        }
        
        ToolBarView(nameView:"Transferencia", iconView: "questionmark.circle") {
            IconHeaderView()
        } content: {
            Text("Prueba")
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
        }
        
        
    }
}

#Preview {
    TransferView()
}

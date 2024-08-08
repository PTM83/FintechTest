import SwiftUI

struct MainBankView: View {
    var secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    var letterColor:Color = CustomColors.digitColor.toSwiftColor()

    var body: some View {
        
        VStack {
            // Header
            HeaderMainView(percentHeight: 0.78)
                .background(mainColor)
                
            // Bloque principal que debe posee una animación
            BlockPutInformationView(percentWidth: 0.07,
                                    percentHeight: 0.78,
                                    xPosition: 0,
                                    yPosition: 0,
                                    secondaryColor: secondaryColor)
            .overlay(
                InfoPrincipalBlockMainView()
            ).padding(.top,-120)

            // Adds Announces
            ScrollView {
                
                BlockPutInformationView(percentWidth: 0.07,
                                        percentHeight: 0.9,
                                        xPosition: 0,
                                        yPosition: 0,
                                        secondaryColor: mainColor)
                
                // Carrusel
                CarruselMainView(textTitle: "¿Que quieres hacer hoy?")
                    .padding([.leading, .top, .trailing],20)
                
                // Conoce Mach
                VStack(alignment: .leading, spacing: 20) {
                    Text("Conoce MACH")
                        .font(.system(size: 20, weight: .light, design: .rounded))
                        .foregroundStyle(letterColor)
                        .kerning(1.4)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(1..<5, id:\.self) { _ in
                                BlockPutInformationView(percentWidth: 0.12,
                                                        percentHeight: 0.88,
                                                        xPosition: 0,
                                                        yPosition: 0,
                                                        shadowColor: .white,
                                                        secondaryColor: letterColor)
                            }
                        }
                    }
                }.padding(20)
            }
            
        }
        .background(secondaryColor)
        .navigationBarHidden(true)
    }
}


#Preview {
    MainBankView()
}


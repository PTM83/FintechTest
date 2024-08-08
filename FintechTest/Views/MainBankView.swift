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
                
            BlockPutInformationView(percentWidth: 0.07,
                                    percentHeight: 0.78,
                                    xPosition: 0,
                                    yPosition: 0,
                                    secondaryColor: secondaryColor)
            .overlay(
                ExtractedView()
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
                                BlockPutInformationView(percentWidth: 0.13,
                                                        percentHeight: 0.88,
                                                        xPosition: 0,
                                                        yPosition: 0,
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

struct ExtractedView: View {

    
    var body: some View {

        VStack {
            
        /*
         Parte del código que va toda la información
         a desplegar en la vista inicial
         */
            VStack(alignment: .leading, spacing: 12){
            
                HStack(alignment: .firstTextBaseline){
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Mi cuenta MACH")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                        Text("Cuenta Corriente BCI 7771 12 345 678")
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                            .tracking(0.4)
                    }
                    Spacer()
                    
                    Button(action: {
                        // Debe ir a una Vista
                    }, label: {
                        Image(systemName: "person")
                    })
                }.foregroundColor(.black)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Saldo disponible")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                    Text("$ 15.953")
                        .font(.system(size: 38, weight: .bold, design: .rounded))
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                }
                /*
                 Parte del código que se despliega o no si el usuario
                 empuja hacia abajo la pantalla
                 */
                Divider()
                    .background(Color.black)
                
                Button(action: {
                    // Acción del botón
                }) {
                    Text("Ver mis movimientos")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                }
                
            }
            .padding(15)

        }
//        .background(.blue) // VStack Global


    }
}

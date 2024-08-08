import SwiftUI

struct ViewIntroduction: View {
    @State private var enteredDigit: [Int] = []
    @ObservedObject private var attemptManager = AttemptManager.shared

    var body: some View {
        NavigationStack {
            ZStack(alignment: .center) {
                ContainerRelativeShape()
                CustomColors.primaryColor.toSwiftColor()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    CheckPasswordView(enteredDigits: $enteredDigit, topText: "Insert your PIN")
                    
                    Spacer(minLength: 110)

                    DigitPasswordView(items: CustomElements.elements, letterColor: CustomColors.digitColor.toSwiftColor(), enteredDigit: $enteredDigit)
                    
                    Spacer()

                    Button(action: {
                        print("DEBE HACER ALGO")
                    }, label: {
                        Text("Forget my PIN")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                    })
                }
                .padding()
                .foregroundColor(CustomColors.digitColor.toSwiftColor())
            }
            .navigationDestination(isPresented: $attemptManager.isAthenticated) {
                PrincipalMachView()
            }
        }
    }
}

#Preview {
    ViewIntroduction()
}

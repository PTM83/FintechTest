//
//  FintechTestApp.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 29-07-24.
//

//import SwiftUI
//
//@main
//struct FintechTestApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ViewIntroduction()
//        }
//    }
//}

import SwiftUI

@main
struct MyApp: App {
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ViewIntroduction()
                .environmentObject(viewRouter)
        }
    }
}

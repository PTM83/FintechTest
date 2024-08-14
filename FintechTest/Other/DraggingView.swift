//
//  DraggingView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 13-08-24.
//

import SwiftUI

//struct DraggingView: View {
//    @GestureState private var isDragging: Bool = false
//
//    var body: some View {
//        Circle()
//            .fill(isDragging ? Color.green : Color.blue) // Cambia de color cuando se arrastra
//            .frame(width: 100, height: 100)
//            .gesture(
//                DragGesture()
//                    .updating($isDragging) { _, state, _ in
//                        state = true
//                    }
//            )
//    }
//}
//
//#Preview {
//    DraggingView()
//}

struct CounterView: View {
    @GestureState private var isDetectingLongPress = false
    
    var body: some View {
        let press = LongPressGesture(minimumDuration: 1)
            .updating($isDetectingLongPress) { currentState, gestureState, transaction in
                gestureState = currentState
            }
        
        return Circle()
            .fill(isDetectingLongPress ? Color.yellow : Color.green)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(press)
    }
}

#Preview {
    CounterView()
}

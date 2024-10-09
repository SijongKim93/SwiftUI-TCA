//
//  ContentView.swift
//  TCA_Practice
//
//  Created by 김시종 on 10/1/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<CounterFeature>
    
    var body: some View {
        VStack {
            Text("\(store.count)")
                .font(.largeTitle)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
            HStack {
                Button("-") {
                    store.send(.decrementButtonTapped)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                
                Button("+") {
                    store.send(.incrementButtonTapped)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                
                Button(store.isTimerRunning ? "Stop Timer" : "Start Timer") {
                    store.send(.toggleTimerButtonTapped)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
                
                Button("Fact") {
                    store.send(.factButtonTapped)
                }
            }
        }
    }
}



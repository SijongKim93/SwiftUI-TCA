//
//  TCA_PracticeApp.swift
//  TCA_Practice
//
//  Created by 김시종 on 10/1/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct PracticeTCAApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: PracticeTCAApp.store)
        }
    }
}

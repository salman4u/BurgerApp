//
//  BurgerApp.swift
//  Shared
//
//  Created by Salman Mamun on 6/24/20.
//

import SwiftUI

@main
struct BurgerApp: App {

    @StateObject private var store = testStore
    
    var body: some Scene {
        
        WindowGroup {
            ContentView(store: store)
        }
    }
}

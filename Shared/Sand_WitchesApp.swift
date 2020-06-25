//
//  Sand_WitchesApp.swift
//  Shared
//
//  Created by Michael Redig on 6/24/20.
//

import SwiftUI

@main
struct Sand_WitchesApp: App {
	@StateObject private var store = SandwichStore()


    var body: some Scene {
        WindowGroup {
			ContentView(store: store)
        }
    }
}

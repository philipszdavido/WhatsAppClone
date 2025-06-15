//
//  WhatsApp_CloneApp.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI
import SwiftData

@main
struct WhatsApp_CloneApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

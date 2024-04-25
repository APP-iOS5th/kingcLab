//
//  TodoListApp.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import SwiftUI
import SwiftData

//var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Task.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//        
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Task.self)
        }
//        .modelContainer(sharedModelContainer)
    }
    
    
    
}

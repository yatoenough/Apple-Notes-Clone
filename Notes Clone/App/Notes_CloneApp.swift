//
//  Notes_CloneApp.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 18/03/2025.
//

import SwiftUI
import SwiftData

@main
struct Notes_CloneApp: App {
    private let modelContainer: ModelContainer = {
        let config = ModelConfiguration(isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: Schema([Folder.self]), configurations: config)
        } catch {
            fatalError(error.localizedDescription)
        }
        
    }()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FoldersScreenView()
            }
            .modelContainer(modelContainer)
        }
    }
}

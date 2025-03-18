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
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FoldersScreenView()
            }
        }
    }
}

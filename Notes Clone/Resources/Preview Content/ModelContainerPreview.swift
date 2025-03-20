//
//  ModelContainerPreview.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 20/03/2025.
//

import SwiftUI
import SwiftData

struct ModelContainerPreview<Content: View>: View {
    private let previewModelContainer: ModelContainer = {
        let schema = Schema([Folder.self])
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        
        do {
            let container = try ModelContainer(for: schema, configurations: config)
            
            for folder in Folder.defaultFolders {
                container.mainContext.insert(folder)
            }
            
            try container.mainContext.save()
            
            return container
        } catch {
            fatalError(error.localizedDescription)
        }
    }()
    
    private let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .modelContainer(previewModelContainer)
    }
}

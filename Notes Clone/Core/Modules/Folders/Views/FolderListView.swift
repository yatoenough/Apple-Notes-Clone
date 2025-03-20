//
//  FolderListView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI
import SwiftData

struct FolderListView: View {
    let headerTitle: String
    
    @Query private var folders: [Folder]
    
    var body: some View {
        List {
            Section(header: Text(headerTitle)) {
                ForEach(folders, id: \.id) { folder in
                    FolderListItem(folder: folder)
                }
            }
            .headerProminence(.increased)
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ModelContainerPreview {
        NavigationStack {
            FolderListView(headerTitle: "Local")
        }
    }
}

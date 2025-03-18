//
//  FolderListView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderListView: View {
    let headerTitle: String
    
    var body: some View {
        List {
            Section(header: Text(headerTitle)) {
                FolderListItem(folder: Folder(id: UUID(), name: "Test Folder"))
                FolderListItem(folder: Folder(id: UUID(), name: "Test Folder"))
                FolderListItem(folder: Folder(id: UUID(), name: "Test Folder"))
            }
            .headerProminence(.increased)
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationStack {
        FolderListView(headerTitle: "Local")
    }
    
}

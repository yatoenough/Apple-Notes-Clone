//
//  FolderListView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderListView: View {
    var body: some View {
        List {
            Section(header: Text("iCloud")) {
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
        FolderListView()
    }
    
}

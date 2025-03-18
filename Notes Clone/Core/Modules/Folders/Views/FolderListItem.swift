//
//  FolderListItem.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderListItem: View {
    let folder: Folder
    
    var body: some View {
        NavigationLink {
            FolderView(folder: folder)
        } label: {
            HStack {
                Image(systemName: "folder")
                    .foregroundStyle(.accent)
                Text(folder.name)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationStack {
        List {
            FolderListItem(folder: Folder(id: UUID(), name: "Test Folder"))
        }
    }
}

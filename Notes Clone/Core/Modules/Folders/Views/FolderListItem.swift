//
//  FolderListItem.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderListItem: View {
    let title: String
    
    var body: some View {
        NavigationLink {
            FolderView()
        } label: {
            HStack {
                Image(systemName: "folder")
                    .foregroundStyle(.accent)
                Text(title)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationStack {
        List {
            FolderListItem(title: "Folder")
        }
    }
}

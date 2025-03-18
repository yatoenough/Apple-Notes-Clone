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
                FolderListItem(title: "Folder")
                FolderListItem(title: "Folder")
                FolderListItem(title: "Folder")
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

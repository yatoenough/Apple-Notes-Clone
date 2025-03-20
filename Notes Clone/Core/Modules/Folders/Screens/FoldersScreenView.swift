//
//  FoldersScreenView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 18/03/2025.
//

import SwiftUI

struct FoldersScreenView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        FolderListView(headerTitle: "Local")
            .searchable(text: $searchText)
            .navigationTitle("Folders")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "folder.badge.plus")
                    }
                    
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                    
                }
            }
    }
}

#Preview {
    ModelContainerPreview {
        NavigationStack {
            FoldersScreenView()
        }
    }
}

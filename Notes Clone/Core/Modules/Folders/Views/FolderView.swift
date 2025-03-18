//
//  FolderView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderView: View {
    let folder: Folder
    @State private var searchText: String = ""
    
    var body: some View {
        List {
            
        }
        .searchable(text: $searchText)
        .navigationTitle(folder.name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
            }
            
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "square.and.pencil")
                }
                
                
            }
            
            
        }
    }
}

#Preview {
    NavigationStack {
        FolderView(folder: Folder(id: UUID(), name: "Test Folder"))
    }
    
}

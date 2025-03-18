//
//  FoldersView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 18/03/2025.
//

import SwiftUI

struct FoldersView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView {
        
        }
        .searchable(text: $searchText)
        .navigationTitle("Folders")
    }
}

#Preview {
    NavigationStack {
        FoldersView()
    }
}

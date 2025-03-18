//
//  FolderView.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import SwiftUI

struct FolderView: View {
    let folder: Folder
    
    var body: some View {
        Text(folder.name)
    }
}

#Preview {
    FolderView(folder: Folder(id: UUID(), name: "Test Folder"))
}

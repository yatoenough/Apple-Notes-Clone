//
//  Folder.swift
//  Notes Clone
//
//  Created by Nikita Shyshkin on 19/03/2025.
//

import Foundation
import SwiftData

@Model
class Folder {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}

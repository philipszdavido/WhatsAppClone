//
//  Item.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

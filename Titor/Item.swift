//
//  Item.swift
//  Titor
//
//  Created by Vitor Trimer on 22/11/24.
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

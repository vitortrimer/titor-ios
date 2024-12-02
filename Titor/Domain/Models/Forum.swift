//
//  Forum.swift
//  Titor
//
//  Created by Vitor Trimer on 25/11/24.
//

import Foundation

struct Forum: Hashable {
    let id: UUID
    let name: String
    let categories: [Category]
    let createdAt: Date
    let modifiedAt: Date
}

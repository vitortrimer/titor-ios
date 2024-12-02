//
//  User.swift
//  Titor
//
//  Created by Vitor Trimer on 25/11/24.
//

import Foundation

struct User: Hashable {
    let id: UUID
    let username: String
    let pictureUrl: URL
    let fullName: String
    let birthDate: Date
    let createdAt: Date
    let modifiedAt: Date
}

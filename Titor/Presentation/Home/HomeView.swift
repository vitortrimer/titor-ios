//
//  HomeView.swift
//  Titor
//
//  Created by Vitor Trimer on 25/11/24.
//

import SwiftUI

struct HomeView: View {
    @State var subscriptedCategories: [Category] = [
        Category(id: .init(),
                 name: "Science",
                 textColor: .init(red: Double(26/255), green: 26/255, blue: 26/255),
                 backgroundColor: .init(red: Double(255/255), green: 251/255, blue: 133/255),
                 borderColor: .init(red: Double(255/255), green: 251/255, blue: 133/255)),
        Category(id: .init(),
                 name: "Technology",
                 textColor: .init(red: Double(26/255), green: 26/255, blue: 26/255),
                 backgroundColor: .init(red: Double(79/255), green: 170/255, blue: 255/255),
                 borderColor: .init(red: Double(32/255), green: 145/255, blue: 250/255))
    ]
    var body: some View {
        HStack(spacing: 8) {
            ForEach(subscriptedCategories, id: \.self) { category in
                Text(category.name)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .foregroundColor(category.textColor)
                    .background(category.backgroundColor)
                    .border(category.borderColor, width: 2)
            }
        }
    }
}

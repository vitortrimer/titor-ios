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
    
    @State var posts: [Post] = [
        .init(id: .init(),
              title: "Post title",
              content: "This is the post content test",
              imageUrls: [],
              author: .init(id: .init(),
                            username: "vitortrimer",
                            pictureUrl: URL(string: "https://google.com.br")!,
                            fullName: "Vitor Trimer",
                            birthDate: .now,
                            createdAt: .now, modifiedAt: .now),
              reactions: [],
              interactions: [],
              forum: .init(id: .init(),
                           name: "Forum",
                           categories: [],
                           createdAt: .now,
                           modifiedAt: .now),
              createdAt: .now)
    ]
              
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HomeHeaderView()
            ScrollView {
                ForEach(posts, id: \.self) { post in
                    PostSummaryView(post: post)
                }
            }
            Spacer()
        }
    }
}

//
//  PostSummaryView.swift
//  Titor
//
//  Created by Vitor Trimer on 01/12/24.
//

import SwiftUI

struct PostSummaryView: View {
    @State var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            NavigationLink(
                post.title,
                destination: PostView()
                    .navigationTitle(post.title))
            Text(post.content.prefix(120))
            HStack(spacing: 16) {
                let authorText = "By: \(post.author.username)"
                Text(authorText)
                Text("posted at: \(post.createdAt)")
            }
        }
    }
}


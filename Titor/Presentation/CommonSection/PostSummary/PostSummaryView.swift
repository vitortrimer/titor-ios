//
//  PostSummaryView.swift
//  Titor
//
//  Created by Vitor Trimer on 01/12/24.
//

import SwiftUI

struct PostSummaryView: View {
    @State var post: Post
    let formatter: DateFormatter
    
    init(post: Post) {
        _post = State(initialValue: post)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YYYY"
        self.formatter = formatter
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            NavigationLink(
                post.title,
                destination: PostView()
                    .navigationTitle(post.title))
            .lineLimit(1, reservesSpace: false)
            .font(.headline)
            Text(post.content.prefix(120))
                .font(.subheadline)
                .padding(.top, 4)
            HStack(spacing: 16) {
                Text(.init("**_Author:_** \(post.author.username)"))
                    .font(.caption)
                Text(.init("**_posted at_**: \(formatter.string(from: post.createdAt))"))
                    .font(.caption)
            }
            .padding(.top, 8)
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
    }
}


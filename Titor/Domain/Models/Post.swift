import Foundation

struct Post: Hashable {
    let id: UUID
    let title: String
    let content: String
    let imageUrls: [URL]
    let author: User
    let reactions: [Reaction]
    let interactions: [Post]
    let forum: Forum
    let createdAt: String
}

public enum Reaction: Hashable {
    case like
    case love
    case congratulations
    case sad
    case angry
}

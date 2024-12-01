import Foundation

struct Post {
    let id: UUID
    let content: String
    let imageUrls: [URL]
    let author: User
    let reactions: [Reaction]
    let interactions: [Post]
    let forum: Forum
    let createdAt: String
}

public enum Reaction {
    case like
    case love
    case congratulations
    case sad
    case angry
}

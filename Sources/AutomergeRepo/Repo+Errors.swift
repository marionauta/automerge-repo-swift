import Foundation

enum Errors: Sendable {
    public struct Unavailable: Sendable, LocalizedError {
        let id: DocumentId
        public var errorDescription: String? {
            "Unknown document Id: \(id)"
        }
    }

    public struct DocDeleted: Sendable, LocalizedError {
        let id: DocumentId
        public var errorDescription: String? {
            "Document with Id: \(id) has been deleted."
        }
    }

    public struct DocUnavailable: Sendable, LocalizedError {
        let id: DocumentId
        public var errorDescription: String? {
            "Document with Id: \(id) is unavailable."
        }
    }

    public struct BigBadaBoom: Sendable, LocalizedError {
        let msg: String
        public var errorDescription: String? {
            "Something went quite wrong: \(msg)."
        }
    }
}

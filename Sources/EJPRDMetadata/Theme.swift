import Foundation

public struct Theme: Codable {
    public let id: URL

    public init(id: URL) {
        self.id = id
    }
    
    private enum CodingKeys: String, CodingKey {
        case id = "@id"
    }
}

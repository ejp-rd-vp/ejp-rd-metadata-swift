import Foundation

public struct Theme: Codable {
    public let id: URL

    private enum CodingKeys: String, CodingKey {
        case id = "@id"
    }
}

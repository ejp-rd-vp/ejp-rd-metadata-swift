import Foundation

public struct Publisher: Codable {
    public let name: String
    public let location: Location

    private enum CodingKeys: String, CodingKey {
        case name, location
    }
}

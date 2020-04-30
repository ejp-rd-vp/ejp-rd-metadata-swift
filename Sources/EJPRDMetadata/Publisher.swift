import Foundation

public struct Publisher: Codable {
    public let name: String
    public let location: Location

    public init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
    
    private enum CodingKeys: String, CodingKey {
        case name, location
    }
}

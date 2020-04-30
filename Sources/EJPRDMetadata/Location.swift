import Foundation

public struct Location: Codable {
    public let city: String
    public let country: String

    public init(city: String, country: String) {
        self.city = city
        self.country = country
    }
}

import Foundation

public struct Dataset: Codable {
    public let id: URL
    public let type = "BiobankDataset"
    public let name: String
    public let theme: [Theme]
    public let publisher: Publisher
    public let numberOfPatients: Int
    public let context = URL(string: "https://raw.githubusercontent.com/ejp-rd-vp/resource-metadata-schema/master/ejp_vocabulary_context.json")!

    public init(id: URL, name: String, theme: [Theme], publisher: Publisher, numberOfPatients: Int) {
        self.id = id
        self.name = name
        self.theme = theme
        self.publisher = publisher
        self.numberOfPatients = numberOfPatients
    }

    private enum CodingKeys: String, CodingKey {
        case id = "@id", type = "@type", name, theme, publisher, numberOfPatients, context = "@context"
    }
}

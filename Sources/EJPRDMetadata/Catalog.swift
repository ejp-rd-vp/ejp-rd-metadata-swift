import Foundation

public struct Catalog: Codable {
    public let id: URL
    public let datasets: [URL]
    public let type = "CatalogOfRegistries"
    public let publisher: Publisher
    public let context = URL(string: "https://raw.githubusercontent.com/ejp-rd-vp/resource-metadata-schema/master/ejp_vocabulary_context.json")!

    public init(id: URL, datasets: [URL], publisher: Publisher) {
        self.id = id
        self.datasets = datasets
        self.publisher = publisher
    }

    private enum CodingKeys: String, CodingKey {
        case id = "@id", datasets, type, publisher, context = "@context"
    }
}

import Foundation
import ObjectMapper

public struct PublishEntry: Mappable {
    public var customer: String?
    public var channel: String?

    public var publishedAt: Date?

    public init?(map: Map) {
        mapping(map: map)
    }

    public mutating func mapping(map: Map) {
        customer <- map["customer"]
        channel <- map["channel"]
        publishedAt <- (map["published_at"], DateTransform())
    }
}

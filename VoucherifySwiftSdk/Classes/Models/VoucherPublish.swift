import Foundation
import ObjectMapper

public struct VoucherPublish: Mappable {
    public var count: Int?
    public var entries: [PublishEntry]?

    public init?(map: Map) {
        mapping(map: map)
    }

    public mutating func mapping(map: Map) {
        count <- map["count"]
        entries <- map["entries"]
    }
}

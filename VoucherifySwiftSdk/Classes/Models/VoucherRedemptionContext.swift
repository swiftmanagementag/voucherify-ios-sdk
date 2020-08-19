import Foundation
import ObjectMapper

public struct VoucherRedemptionContext: Mappable {
    public var customer: Customer?

    public var order: Order?

    public var metadata: [String: AnyObject]?

    public init() {}

    public init?(map: Map) {
        mapping(map: map)
    }

    public mutating func mapping(map: Map) {
        customer <- map["customer"]
        order <- map["order"]
        metadata <- map["metadata"]
    }
}

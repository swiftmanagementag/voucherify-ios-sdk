import Foundation
import ObjectMapper

public struct Order: Mappable {
    public var amount: Int?
    public var items: [OrderItem]?

    public init(amount: Int, items: [OrderItem]) {
        self.amount = amount
        self.items = items
    }

    public init?(map: Map) {
        mapping(map: map)
    }

    public mutating func mapping(map: Map) {
        amount <- map["amount"]
        items <- map["items"]
    }
}

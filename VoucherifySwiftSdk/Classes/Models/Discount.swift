import Foundation
import ObjectMapper

public struct Discount: Mappable {
    public var type: DiscountType?
    public var amountOff: Int?
    public var percentOff: Double?
    public var unitOff: Double?
    public var unitType: String?

    public init?(map: Map) {
        mapping(map: map)
    }

    public mutating func mapping(map: Map) {
        type <- map["type"]
        amountOff <- map["amount_off"]
        percentOff <- map["percent_off"]
        unitOff <- map["unit_off"]
        unitType <- map["unit_type"]
    }
}

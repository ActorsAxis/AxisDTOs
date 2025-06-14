//
//  ProductDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/25/25.
//

import Foundation

public struct ProductDTO: Codable,  Sendable,
						  Hashable, Identifiable {
	public let id:               UUID
	public var userLevelID:      UUID?
	public var userLevel:        UserLevelDTO?
	public var stockKeepingUnit: String?
	public var name:             String?
	public var title:            String?
	public var shortDescription: String?
	public var longDescription:  String?
	public var url:              String?
	public var level:            Int?
	public var priority:         Int?
	public var discountAmount:   Double?
	public var discountPercent:  Double?
	public var couponsAvailable: Int
	public var couponsToRedeem:  Int
	public var couponUsageCount: Int?
	public var purpleCoins:      Double?
	public var media:           [MediumDTO]?
	public var beginDate:        Date?
	public var endDate:          Date?
	public var active:           Bool
	public var created:          Date?
	public var updated:          Date?

	public init(
		id:               UUID          = UUID(),
		userLevelID:      UUID?         = nil,
		userLevel:        UserLevelDTO? = nil,
		stockKeepingUnit: String?       = nil,
		name:             String?       = nil,
		title:            String?       = nil,
		shortDescription: String?       = nil,
		longDescription:  String?       = nil,
		url:              String?       = nil,
		level:            Int?          = nil,
		priority:         Int?          = nil,
		discountAmount:   Double?       = nil,
		discountPercent:  Double?       = nil,
		couponsAvailable: Int           = 0,
		couponsToRedeem:  Int           = 0,
		couponUsageCount: Int?          = nil,
		purpleCoins:      Double?       = nil,
		media:           [MediumDTO]?   = nil,
		beginDate:        Date?         = nil,
		endDate:          Date?         = nil,
		active:           Bool          = false,
		created:          Date?         = nil,
		updated:          Date?         = nil
	) {
		self.id               = id
		self.userLevelID      = userLevelID
		self.userLevel        = userLevel
		self.stockKeepingUnit = stockKeepingUnit
		self.name             = name
		self.title            = title
		self.shortDescription = shortDescription
		self.longDescription  = longDescription
		self.url              = url
		self.level            = level
		self.priority         = priority
		self.discountAmount   = discountAmount
		self.discountPercent  = discountPercent
		self.couponsAvailable = couponsAvailable
		self.couponsToRedeem  = couponsToRedeem
		self.couponUsageCount = couponUsageCount
		self.purpleCoins      = purpleCoins
		self.media            = media
		self.beginDate        = beginDate
		self.endDate          = endDate
		self.active           = active
		self.created          = created
		self.updated          = updated
	}
}

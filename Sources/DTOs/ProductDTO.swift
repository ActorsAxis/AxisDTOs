//
//  ProductDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/25/25.
//

import Foundation

public struct ProductDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:               UUID
	public var userLevelID:      UUID?
	public var userLevel:        UserLevelDTO?
	public var stockKeepingUnit: String?
	public var title:            String?
	public var shortDescription: String?
	public var longDescription:  String?
	public var url:              String?
	public var order:            Int?
	public var level:            Int?
	public var quantity:         Int?
	public var discount:         Double?
	public let created:          Date?
	public let updated:          Date?

	public init(
		id:               UUID          = UUID(),
		userLevelID:      UUID?         = nil,
		userLevel:        UserLevelDTO? = nil,
		stockKeepingUnit: String?       = nil,
		title:            String?       = nil,
		shortDescription: String?       = nil,
		longDescription:  String?       = nil,
		url:              String?       = nil,
		order:            Int?          = nil,
		level:            Int?          = nil,
		quantity:         Int?          = nil,
		discount:         Double?       = nil,
		created:          Date?         = nil,
		updated:          Date?         = nil
	) {
		self.id               = id
		self.userLevelID      = userLevelID
		self.userLevel        = userLevel
		self.stockKeepingUnit = stockKeepingUnit
		self.title            = title
		self.shortDescription = shortDescription
		self.longDescription  = longDescription
		self.url              = url
		self.order            = order
		self.level            = level
		self.quantity         = quantity
		self.discount         = discount
		self.created          = created
		self.updated          = updated
	}
}

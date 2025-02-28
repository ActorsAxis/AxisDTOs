//
//  CouponDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/28/25.
//

import Foundation

public struct CouponDTO: Codable, Hashable, Sendable,
						 Identifiable {
	public let id:         UUID
	public var productID:  UUID?
	public var userID:     UUID?
	public var code:       String
	public var usageCount: Int
	public var created:    Date?
	public var updated:    Date?

	public init(
		id:         UUID  = UUID(),
		productID:  UUID? = nil,
		userID:     UUID? = nil,
		code:       String,
		usageCount: Int,
		created:    Date? = nil,
		updated:    Date? = nil
	) {
		self.id         = id
		self.productID  = productID
		self.userID     = userID
		self.code       = code
		self.usageCount = usageCount
		self.created    = created
		self.updated    = updated
	}
}

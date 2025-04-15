//
//  CouponDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/28/25.
//

import Foundation

public struct CouponDTO: Codable,  Sendable,
						 Hashable, Identifiable {
	public let id:         UUID
	public var productID:  UUID?
	public var sponsorID:  UUID?
	public var userID:     UUID?
	public var code:       String
	public var usageCount: Int?
	public var redeemed:   Date?
	public var created:    Date?
	public var updated:    Date?

	public init(
		id:         UUID  = UUID(),
		productID:  UUID? = nil,
		sponsorID:  UUID? = nil,
		userID:     UUID? = nil,
		code:       String,
		usageCount: Int?  = nil,
		redeemed:   Date? = nil,
		created:    Date? = nil,
		updated:    Date? = nil
	) {
		self.id         = id
		self.productID  = productID
		self.sponsorID  = sponsorID
		self.userID     = userID
		self.code       = code
		self.usageCount = usageCount
		self.redeemed   = redeemed
		self.created    = created
		self.updated    = updated
	}
}

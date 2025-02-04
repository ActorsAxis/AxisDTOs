//
//  UserLevelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserLevelDTO: Codable, Hashable, Sendable,
							Identifiable {
	public let id:          UUID
	public var title:       String
	public var coinsNeeded: Int
	public let created:     Date?
	public let updated:     Date?

	public init(
		id:          UUID  = UUID(),
		title:       String,
		coinsNeeded: Int,
		created:     Date? = nil,
		updated:     Date? = nil
	) {
		self.id          = id
		self.title       = title
		self.coinsNeeded = coinsNeeded
		self.created     = created
		self.updated     = updated
	}
}

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
	public var starsNeeded: Int
	public let created:     Date?
	public let updated:     Date?

	public init(
		id:          UUID  = UUID(),
		title:       String,
		starsNeeded: Int,
		created:     Date? = nil,
		updated:     Date? = nil
	) {
		self.id          = id
		self.title       = title
		self.starsNeeded = starsNeeded
		self.created     = created
		self.updated     = updated
	}
}

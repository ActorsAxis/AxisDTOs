//
//  StageDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct StageDTO: Codable, Hashable, Sendable,
						Identifiable {
	public let id:          UUID
	public var userID:      UUID?
	public var user:        UserDTO?
	public var mediumID:    UUID?
	public var medium:      MediumDTO?
	public var description: String?
	public let created:     Date?
	public let updated:     Date?

	public init(
		id:          UUID       = UUID(),
		userID:      UUID?      = nil,
		user:        UserDTO?   = nil,
		mediumID:    UUID?      = nil,
		medium:      MediumDTO? = nil,
		description: String?    = nil,
		created:     Date?      = nil,
		updated:     Date?      = nil
	) {
		self.id          = id
		self.userID      = userID
		self.user        = user
		self.mediumID    = mediumID
		self.medium      = medium
		self.description = description
		self.created     = created
		self.updated     = updated
	}
}

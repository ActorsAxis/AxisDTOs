//
//  StoryDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct StoryDTO: Codable, Hashable, Sendable,
						Identifiable {
	public let id:      UUID
	public let userID:  UUID?
	public let user:    UserDTO?
	public let media:  [MediumDTO]?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID        = UUID(),
		userID:  UUID?       = nil,
		user:    UserDTO?    = nil,
		media:  [MediumDTO]? = nil,
		created: Date?       = nil,
		updated: Date?       = nil
	) {
		self.id      = id
		self.userID  = userID
		self.user    = user
		self.media   = media
		self.created = created
		self.updated = updated
	}
}

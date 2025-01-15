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
	public var userID:  UUID?
	public var user:    UserDTO?
	public var media:  [MediumDTO]?
	public var ui:      UserInterface?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID           = UUID(),
		userID:  UUID?          = nil,
		user:    UserDTO?       = nil,
		media:  [MediumDTO]?    = nil,
		ui:      UserInterface? = nil,
		created: Date?          = nil,
		updated: Date?          = nil
	) {
		self.id      = id
		self.userID  = userID
		self.user    = user
		self.media   = media
		self.ui      = ui
		self.created = created
		self.updated = updated
	}

	public struct UserInterface: Codable, Hashable, Sendable {
		public var seen: Bool

		public init(
			seen: Bool = false
		) {
			self.seen = seen
		}
	}
}

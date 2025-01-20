//
//  StageDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct StageDTO: Codable, Hashable, Sendable,
						Identifiable {
	public let id:      UUID
	public let userID:  UUID?
	public var media:   String?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID    = UUID(),
		userID:  UUID?   = nil,
		media:   String? = nil,
		created: Date?   = nil,
		updated: Date?   = nil
	) {
		self.id      = id
		self.userID  = userID
		self.media   = media
		self.created = created
		self.updated = updated
	}
}

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
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID  = UUID(),
		created: Date? = nil,
		updated: Date? = nil
	) {
		self.id      = id
		self.created = created
		self.updated = updated
	}
}

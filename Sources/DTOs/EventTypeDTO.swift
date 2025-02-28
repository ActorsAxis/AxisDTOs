//
//  EventTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/26/24.
//

import Foundation

public struct EventTypeDTO: Codable, Hashable, Sendable,
							Identifiable {
	public let id:      UUID
	public var name:    String
	public var created: Date?
	public var updated: Date?

	public init(
		id:      UUID  = UUID(),
		name:    String,
		created: Date? = nil,
		updated: Date? = nil
	) {
		self.id      = id
		self.name    = name
		self.created = created
		self.updated = updated
	}
}

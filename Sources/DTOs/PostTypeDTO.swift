//
//  PostTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/7/24.
//

import Foundation

public struct PostTypeDTO: Codable, Hashable, Sendable,
						   Identifiable {
	public let id:      UUID
	public var name:    String?
	public var color:   String?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID    = UUID(),
		name:    String? = nil,
		color:   String? = nil,
		created: Date?   = nil,
		updated: Date?   = nil
	) {
		self.id      = id
		self.name    = name
		self.color   = color
		self.created = created
		self.updated = updated
	}
}

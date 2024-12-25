//
//  UserTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserTypeDTO: Codable, Hashable, Sendable,
						   Identifiable {
	public let id:      UUID
	public let name:    String?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID    = UUID(),
		name:    String? = nil,
		created: Date?   = nil,
		updated: Date?   = nil
	) {
		self.id      = id
		self.name    = name
		self.created = created
		self.updated = updated
	}
}

//
//  UserTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserTypeDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public let id:      UUID
	public let name:    String
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID,
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

//
//  SocialMediumTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/28/24.
//

import Foundation

public struct SocialMediumTypeDTO: Codable,  Sendable,
								   Hashable, Identifiable {
	public let id:      UUID
	public let name:    String
	public let logo:    String?
	public var created: Date?
	public var updated: Date?

	public init(
		id:      UUID    = UUID(),
		name:    String,
		logo:    String? = nil,
		created: Date?   = nil,
		updated: Date?   = nil
	) {
		self.id      = id
		self.name    = name
		self.logo    = logo
		self.created = created
		self.updated = updated
	}
}

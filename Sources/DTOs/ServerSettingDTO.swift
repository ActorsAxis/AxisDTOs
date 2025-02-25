//
//  ServerSettingDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/25/25.
//

import Foundation

public struct ServerSettingDTO: Codable, Hashable, Sendable,
								Identifiable {
	public let id:      UUID
	public let created: Data?
	public let updated: Data?

	public init(
		id:      UUID  = UUID(),
		created: Data? = nil,
		updated: Data? = nil
	) {
		self.id      = id
		self.created = created
		self.updated = updated
	}
}

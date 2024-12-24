//
//  DeviceTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/29/24.
//

import Foundation

public struct DeviceTypeDTO: Codable,  Sendable,
							 Hashable, Identifiable {
	public let id:      UUID
	public var name:    String?
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID,
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

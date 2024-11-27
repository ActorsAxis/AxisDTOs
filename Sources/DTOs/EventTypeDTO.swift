//
//  EventTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/26/24.
//

import Foundation

public struct EventTypeDTO: Codable,  Sendable,
							Hashable, Identifiable {
	public let id:   UUID
	public var name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}

	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.id == rhs.id
	}
}

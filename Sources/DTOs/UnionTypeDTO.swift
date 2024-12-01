//
//  UnionTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/30/24.
//

import Foundation

public struct UnionTypeDTO: Codable,  Sendable,
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
}

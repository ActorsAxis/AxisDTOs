//
//  WorkTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserTypeRequestDTO: Codable, Sendable {
	public let name: String

	public init(
		name: String
	) {
		self.name = name
	}
}

// MARK: -

public struct UserTypeResponseDTO: Codable,  Sendable,
								   Hashable, Identifiable {
	public let id:   UUID
	public let name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}
}

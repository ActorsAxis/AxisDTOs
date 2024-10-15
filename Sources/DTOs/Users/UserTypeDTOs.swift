//
//  UserTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserTypeRequestDTO: Codable, Sendable {
	public let id:       UUID?
	public let name:     String
	public let isActive: Bool

	public init(
		id:       UUID?,
		name:     String,
		isActive: Bool
	) {
		self.id       = id
		self.name     = name
		self.isActive = isActive
	}
}

// MARK: -

public struct UserTypeResponseDTO: Codable,  Sendable,
								   Hashable, Identifiable {
	public let id:       UUID
	public let name:     String
	public let isActive: Bool

	public init(
		id:       UUID,
		name:     String,
		isActive: Bool
	) {
		self.id       = id
		self.name     = name
		self.isActive = isActive
	}
}

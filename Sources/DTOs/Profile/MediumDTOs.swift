//
//  MediumDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumRequestDTO: Codable, Sendable {
	public let userID:    UUID
	public let mediumURL: String?

	public init(
		userID:    UUID,
		mediumURL: String? = nil
	) {
		self.userID    = userID
		self.mediumURL = mediumURL
	}
}

// MARK: -

public struct MediumResponseDTO: Codable, Sendable, Hashable, Identifiable {
	public let id:        UUID
	public let userID:    UUID
	public let mediumURL: String?

	public init(
		id:        UUID,
		userID:    UUID,
		mediumURL: String? = nil
	) {
		self.id        = id
		self.userID    = userID
		self.mediumURL = mediumURL
	}
}

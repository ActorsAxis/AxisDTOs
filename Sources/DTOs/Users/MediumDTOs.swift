//
//  MediumDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumRequestDTO: Codable, Sendable {
	public let mediumURL: String?

	public init(
		mediumURL: String? = nil
	) {
		self.mediumURL = mediumURL
	}
}

// MARK: -

public struct MediumResponseDTO: Codable,  Sendable,
								 Hashable, Identifiable {
	public let id:        UUID
	public let mediumURL: String?

	public init(
		id:        UUID,
		mediumURL: String? = nil
	) {
		self.id        = id
		self.mediumURL = mediumURL
	}
}

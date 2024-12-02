//
//  PostDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/1/24.
//

import Foundation

public struct PostDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public let id:          UUID
	public var userID:      UUID
	public var coordinates: Coordinates?

	public init(
		id:          UUID,
		userID:      UUID = UUID(),
		coordinates: Coordinates? = nil
	) {
		self.id          = id
		self.userID      = userID
		self.coordinates = coordinates
	}
}

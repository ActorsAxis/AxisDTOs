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
	public var name:        String
	public var description: String?
	public var url:         String?
	public var media:      [MediumDTO]?

	public init(
		id:          UUID,
		userID:      UUID         = UUID(),
		coordinates: Coordinates? = nil,
		name:        String,
		description: String?      = nil,
		url:         String?      = nil,
		media:      [MediumDTO]?  = nil
	) {
		self.id          = id
		self.userID      = userID
		self.coordinates = coordinates
		self.name        = name
		self.description = description
		self.url         = url
		self.media       = media
	}
}

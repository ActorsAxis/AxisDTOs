//
//  LocationDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/9/24.
//

import Foundation

public struct LocationDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public let id:          UUID
	public var url:         String?
	public var coordinates: Coordinates?
	public var name:        String?
	public var phone:       String?
	public var mediaURL:    String?
	public var address:     Address?

	public init(
		id:          UUID         = UUID(),
		url:         String?      = nil,
		coordinates: Coordinates? = nil,
		name:        String?      = nil,
		phone:       String?      = nil,
		mediaURL:    String?      = nil,
		address:     Address?     = nil
	) {
		self.id          = id
		self.url         = url
		self.coordinates = coordinates
		self.name        = name
		self.phone       = phone
		self.mediaURL    = mediaURL
		self.address     = address
	}
}

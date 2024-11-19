//
//  HeadshotDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public let id:          UUID
	public let eyeColor:    String?
	public let hairColor:   String?
	public let height:      String?
	public let location:    String?
	public let phone:       String?
	public let picture:     String?
	public let socialMedia: String?
	public let unionStatus: String?
	public let website:     String?
	public let weight:      String?

	public init(
		id:          UUID    = UUID(),
		eyeColor:    String? = nil,
		hairColor:   String? = nil,
		height:      String? = nil,
		location:    String? = nil,
		phone:       String? = nil,
		picture:     String? = nil,
		socialMedia: String? = nil,
		unionStatus: String? = nil,
		website:     String? = nil,
		weight:      String? = nil
	) {
		self.id          = id
		self.eyeColor    = eyeColor
		self.hairColor   = hairColor
		self.height      = height
		self.location    = location
		self.phone       = phone
		self.picture     = picture
		self.socialMedia = socialMedia
		self.unionStatus = unionStatus
		self.website     = website
		self.weight      = weight
	}
}

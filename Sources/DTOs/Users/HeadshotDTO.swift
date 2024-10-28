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
	public var eyeColor:    String?
	public var hairColor:   String?
	public var height:      String?
	public var location:    String?
	public var phone:       String?
	public var picture:     URL?
	public var socialMedia: String?
	public var unionStatus: String?
	public var website:     URL?
	public var weight:      String?

	public init(
		id:          UUID    = UUID(),
		eyeColor:    String? = nil,
		hairColor:   String? = nil,
		height:      String? = nil,
		location:    String? = nil,
		phone:       String? = nil,
		picture:     URL?    = nil,
		socialMedia: String? = nil,
		unionStatus: String? = nil,
		website:     URL?    = nil,
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
		self.init(
			id:          id,
			eyeColor:    eyeColor,
			hairColor:   hairColor,
			height:      height,
			location:    location,
			phone:       phone,
			picture:     picture != nil ? URL(string: picture!) : nil,
			socialMedia: socialMedia,
			unionStatus: unionStatus,
			website:     website != nil ? URL(string: website!) : nil,
			weight:      weight
		)
	}
}

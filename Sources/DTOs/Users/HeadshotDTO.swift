//
//  HeadshotDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public var id:          UUID    = UUID()
	public var eyeColor:    String? = nil
	public var hairColor:   String? = nil
	public var height:      String? = nil
	public var location:    String? = nil
	public var phone:       String? = nil
	public var picture:     String? = nil
	public var socialMedia: String? = nil
	public var unionStatus: String? = nil
	public var website:     String? = nil
	public var weight:      String? = nil

#if false
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
#endif
}

//
//  HeadshotDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotRequest: Codable, Sendable {
	public var id:          UUID?
	public var eyeColor:    String?
	public var hairColor:   String?
	public var height:      String?
	public var location:    String?
	public var phone:       String?
	public var picture:     String?
	public var socialMedia: String?
	public var unionStatus: String?
	public var website:     String?
	public var weight:      String?

	public init(
		id:          UUID?   = nil,
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

	public init(from response: HeadshotResponse) {
		self.init(
			id:          response.id,
			eyeColor:    response.eyeColor,
			hairColor:   response.hairColor,
			height:      response.height,
			location:    response.location,
			phone:       response.phone,
			picture:     response.picture,
			socialMedia: response.socialMedia,
			unionStatus: response.unionStatus,
			website:     response.website,
			weight:      response.weight
		)
	}
}

// MARK: -

public struct HeadshotResponse: Codable,  Sendable,
								Hashable, Identifiable {
	public var id:          UUID
	public var eyeColor:    String?
	public var hairColor:   String?
	public var height:      String?
	public var location:    String?
	public var phone:       String?
	public var picture:     String?
	public var socialMedia: String?
	public var unionStatus: String?
	public var website:     String?
	public var weight:      String?

	public init(
		id:          UUID,
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

	public mutating func copyNonOptionals(from request: HeadshotRequest) {
		if let id          = request.id          { self.id          = id          }
		if let eyeColor    = request.eyeColor    { self.eyeColor    = eyeColor    }
		if let hairColor   = request.hairColor   { self.hairColor   = hairColor   }
		if let height      = request.height      { self.height      = height      }
		if let location    = request.location    { self.location    = location    }
		if let phone       = request.phone       { self.phone       = phone       }
		if let picture     = request.picture     { self.picture     = picture     }
		if let socialMedia = request.socialMedia { self.socialMedia = socialMedia }
		if let unionStatus = request.unionStatus { self.unionStatus = unionStatus }
		if let website     = request.website     { self.website     = website     }
		if let weight      = request.weight      { self.weight      = weight      }
	}
}

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
	public let postTypeID:  UUID?
	public var postType:    PostTypeDTO?
	public var userID:      UUID
	public var user:        UserDTO?
	public var coordinates: Coordinates?
	public var name:        String?
	public var description: String?
	public var url:         String?
	public var favorited:   Bool?
	public var media:      [MediumDTO]?
	public let created:     Date?
	public let updated:     Date?

	public init(
		id:          UUID         = UUID(),
		postTypeID:  UUID?        = nil,
		postType:    PostTypeDTO? = nil,
		userID:      UUID         = UUID(),
		user:        UserDTO?     = nil,
		coordinates: Coordinates? = nil,
		name:        String?      = nil,
		description: String?      = nil,
		url:         String?      = nil,
		favorited:   Bool?        = nil,
		media:      [MediumDTO]?  = nil,
		created:     Date?        = nil,
		updated:     Date?        = nil
	) {
		self.id          = id
		self.postTypeID  = postTypeID
		self.postType    = postType
		self.userID      = userID
		self.user        = user
		self.coordinates = coordinates
		self.name        = name
		self.description = description
		self.url         = url
		self.favorited   = favorited
		self.media       = media
		self.created     = created
		self.updated     = updated
	}
}

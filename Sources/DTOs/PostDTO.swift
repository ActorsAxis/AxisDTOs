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
	public var media:      [MediumDTO]?
	public var comments:    Int?
	public var likes:       Int?
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
		media:      [MediumDTO]?  = nil,
		comments:    Int?         = nil,
		likes:       Int?         = nil,
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
		self.media       = media
		self.comments    = comments
		self.likes       = likes
		self.created     = created
		self.updated     = updated
	}
}

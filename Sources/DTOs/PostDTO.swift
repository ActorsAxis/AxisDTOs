//
//  PostDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/1/24.
//

import Foundation

public struct PostDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public let id:              UUID
	public var postTypeID:      UUID?
	public var postType:        PostTypeDTO?
	public var userID:          UUID?
	public var user:            UserDTO?
	public var coordinates:     Coordinates?
	public var name:            String?
	// The “post” prefix before “description” is redundant on
	// “PostDTO,” but “description” alone would conflict with
	// future CustomStringConvertible protocol conformance.
	public var postDescription: String?
	public var url:             String?
	public var media:          [MediumDTO]?
	public var comments:        Int?
	public var favorites:       Int
	public var likes:           Int
	public var created:         Date?
	public var updated:         Date?

	public init(
		id:              UUID         = UUID(),
		postTypeID:      UUID?        = nil,
		postType:        PostTypeDTO? = nil,
		userID:          UUID?        = nil,
		user:            UserDTO?     = nil,
		coordinates:     Coordinates? = nil,
		name:            String?      = nil,
		postDescription: String?      = nil,
		url:             String?      = nil,
		media:          [MediumDTO]?  = nil,
		comments:        Int?         = nil,
		favorites:       Int          = 0,
		likes:           Int          = 0,
		created:         Date?        = nil,
		updated:         Date?        = nil
	) {
		self.id              = id
		self.postTypeID      = postTypeID
		self.postType        = postType
		self.userID          = userID
		self.user            = user
		self.coordinates     = coordinates
		self.name            = name
		self.postDescription = postDescription
		self.url             = url
		self.media           = media
		self.comments        = comments
		self.favorites       = favorites
		self.likes           = likes
		self.created         = created
		self.updated         = updated
	}
}

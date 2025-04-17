//
//  StoryDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct StoryDTO: Codable,  Sendable,
						Hashable, Identifiable {
	public let id:        UUID
	public var userID:    UUID?
	public var user:      UserDTO?
	public var media:    [MediumDTO]?
	public var seen:      Bool?
	public var favorites: Int?
	public var likes:     Int?
	public var created:   Date?
	public var updated:   Date?

	public init(
		id:        UUID        = UUID(),
		userID:    UUID?       = nil,
		user:      UserDTO?    = nil,
		media:    [MediumDTO]? = nil,
		seen:      Bool?       = nil,
		favorites: Int?        = nil,
		likes:     Int?        = nil,
		created:   Date?       = nil,
		updated:   Date?       = nil
	) {
		self.id        = id
		self.userID    = userID
		self.user      = user
		self.media     = media
		self.seen      = seen
		self.favorites = favorites
		self.likes     = likes
		self.created   = created
		self.updated   = updated
	}
}

//
//  StageDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct StageDTO: Codable,  Sendable,
						Hashable, Identifiable {
	public let id:               UUID
	public var userID:           UUID?
	public var user:             UserDTO?
	public var mediumID:         UUID?
	public var medium:           MediumDTO?
	public var stageDescription: String?
	public var favorites:        Int
	public var likes:            Int
	public var created:          Date?
	public var updated:          Date?

	public init(
		id:               UUID       = UUID(),
		userID:           UUID?      = nil,
		user:             UserDTO?   = nil,
		mediumID:         UUID?      = nil,
		medium:           MediumDTO? = nil,
		stageDescription: String?    = nil,
		favorites:        Int        = 0,
		likes:            Int        = 0,
		created:          Date?      = nil,
		updated:          Date?      = nil
	) {
		self.id               = id
		self.userID           = userID
		self.user             = user
		self.mediumID         = mediumID
		self.medium           = medium
		self.stageDescription = stageDescription
		self.favorites        = favorites
		self.likes            = likes
		self.created          = created
		self.updated          = updated
	}
}

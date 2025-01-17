//
//  HeadshotDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotDTO: Codable, Hashable, Sendable,
						   Identifiable {
	public let id:        UUID
	public var userID:    UUID?
	public var eyeColor:  String?
	public var hairColor: String?
	public var height:    String?
	public var location:  String?
	public var phone:     String?
	public var picture:   String?
	public var website:   String?
	public var weight:    String?
	public let created:   Date?
	public let updated:   Date?

	public init(
		id:        UUID    = UUID(),
		userID:    UUID?   = nil,
		eyeColor:  String? = nil,
		hairColor: String? = nil,
		height:    String? = nil,
		location:  String? = nil,
		phone:     String? = nil,
		picture:   String? = nil,
		website:   String? = nil,
		weight:    String? = nil,
		created:   Date?   = nil,
		updated:   Date?   = nil
	) {
		self.id        = id
		self.userID    = userID
		self.eyeColor  = eyeColor
		self.hairColor = hairColor
		self.height    = height
		self.location  = location
		self.phone     = phone
		self.picture   = picture
		self.website   = website
		self.weight    = weight
		self.created   = created
		self.updated   = updated
	}
}

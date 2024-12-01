//
//  SocialMediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/29/24.
//

import Foundation

public struct SocialMediumDTO: Codable,  Sendable,
							   Hashable, Identifiable {
	public let id:                 UUID?
	public var eventID:            UUID?
	public var userID:             UUID?
	public var socialMediumTypeID: UUID
	public var url:                String

	public init(
		id:                 UUID? = nil,
		eventID:            UUID? = nil,
		userID:             UUID? = nil,
		socialMediumTypeID: UUID  = UUID(),
		url:                String
	) {
		self.id                 = id
		self.eventID            = eventID
		self.userID             = userID
		self.socialMediumTypeID = socialMediumTypeID
		self.url                = url
	}
}

//
//  SocialMediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/29/24.
//

import Foundation

public struct SocialMediumDTO: Codable, Hashable, Sendable,
							   Identifiable {
	public let id:                 UUID
	public var userID:             UUID?
	public var eventID:            UUID?
	public var socialMediumTypeID: UUID?
	public var url:                String?
	public var created:            Date?
	public var updated:            Date?

	public init(
		id:                 UUID    = UUID(),
		userID:             UUID?   = nil,
		eventID:            UUID?   = nil,
		socialMediumTypeID: UUID?   = nil,
		url:                String? = nil,
		created:            Date?   = nil,
		updated:            Date?   = nil
	) {
		self.id                 = id
		self.userID             = userID
		self.eventID            = eventID
		self.socialMediumTypeID = socialMediumTypeID
		self.url                = url
		self.created            = created
		self.updated            = updated
	}
}

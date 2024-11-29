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
	public var eventID:            UUID
	public var socialMediumTypeID: UUID
	public var path:               String

	public init(
		id:                 UUID? = nil,
		eventID:            UUID  = UUID(),
		socialMediumTypeID: UUID  = UUID(),
		path:               String
	) {
		self.id                 = id
		self.eventID            = eventID
		self.socialMediumTypeID = socialMediumTypeID
		self.path               = path
	}
}

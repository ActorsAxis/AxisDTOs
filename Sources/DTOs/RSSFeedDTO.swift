//
//  RSSFeedDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct RSSFeedDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:      UUID
	public var name:    String
	public var url:     String
	public let created: Date?
	public let updated: Date?

	public init(
		id:      UUID,
		name:    String,
		url:     String,
		created: Date? = nil,
		updated: Date? = nil
	) {
		self.id      = id
		self.name    = name
		self.url     = url
		self.created = created
		self.updated = updated
	}
}

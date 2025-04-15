//
//  RSSFeedDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/13/25.
//

import Foundation

public struct RSSFeedDTO: Codable,  Sendable,
						  Hashable, Identifiable {
	public let id:      UUID
	public var name:    String
	public var url:     String
	public var created: Date?
	public var updated: Date?

	public init(
		id:      UUID  = UUID(),
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

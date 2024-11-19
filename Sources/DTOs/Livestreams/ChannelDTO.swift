//
//  ChannelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/12/24.
//

import Foundation

public struct ChannelDTO: Codable,  Sendable,
						  Hashable, Identifiable {
	public let id:                 UUID
	public let title:              String
	public let description:        String?
	public let beginBroadcasting:  Date?
	public let endBroadcasting:    Date?
	public let scheduledBroadcast: Date?
	public let user:               User?

	public init(
		id:                 UUID    = UUID(),
		title:              String,
		description:        String? = nil,
		beginBroadcasting:  Date?   = nil,
		endBroadcasting:    Date?   = nil,
		scheduledBroadcast: Date?   = nil,
		user:               User?   = nil
	) {
		self.id                 = id
		self.title              = title
		self.description        = description
		self.beginBroadcasting  = beginBroadcasting
		self.endBroadcasting    = endBroadcasting
		self.scheduledBroadcast = scheduledBroadcast
		self.user               = user
	}

	// MARK: -

	public struct User: Codable, Sendable,
						Hashable {
		public let name:    String?
		public let picture: String?

		public init(
			name:    String? = nil,
			picture: String? = nil
		) {
			self.name    = name
			self.picture = picture
		}
	}
}

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
	public var title:              String
	public var description:        String?
	public var beginBroadcasting:  Date?
	public var endBroadcasting:    Date?
	public var scheduledBroadcast: Date?
	public var broadcasting:       Date?
	public var user:               User?
	public let createdAt:          Date?
	public let updatedAt:          Date?

	public init(
		id:                 UUID    = UUID(),
		title:              String,
		description:        String? = nil,
		beginBroadcasting:  Date?   = nil,
		endBroadcasting:    Date?   = nil,
		scheduledBroadcast: Date?   = nil,
		broadcasting:       Date?   = nil,
		user:               User?   = nil,
		createdAt:          Date?   = nil,
		updatedAt:          Date?   = nil
	) {
		self.id                 = id
		self.title              = title
		self.description        = description
		self.beginBroadcasting  = beginBroadcasting
		self.endBroadcasting    = endBroadcasting
		self.scheduledBroadcast = scheduledBroadcast
		self.broadcasting       = broadcasting
		self.user               = user
		self.createdAt          = createdAt
		self.updatedAt          = updatedAt
	}

	// MARK: -

	public struct User: Codable,  Sendable,
						Hashable, Identifiable {
		public let id:      UUID
		public let name:    String?
		public let picture: String?

		public init(
			id:      UUID,
			name:    String? = nil,
			picture: String? = nil
		) {
			self.id      = id
			self.name    = name
			self.picture = picture
		}
	}
}

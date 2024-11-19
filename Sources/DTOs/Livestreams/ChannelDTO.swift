//
//  ChannelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/12/24.
//

import Foundation

public struct ChannelDTO: Codable,  Sendable,
						  Hashable, Identifiable {
	public var id:                 UUID    = UUID()
	public let title:              String
	public var description:        String? = nil
	public var beginBroadcasting:  Date?   = nil
	public var endBroadcasting:    Date?   = nil
	public var scheduledBroadcast: Date?   = nil
	public var user:               User?   = nil

#if false
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
#endif

	public struct User: Codable, Sendable,
						Hashable {
		public let name:    String?
		public let picture: String?

#if false
		public init(
			name:    String? = nil,
			picture: String? = nil
		) {
			self.name    = name
			self.picture = picture
		}
#endif
	}
}

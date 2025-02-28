//
//  ChannelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/12/24.
//

import Foundation

public struct ChannelDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:                 UUID
	public var userID:             UUID?
	public var name:               String?
	public var channelDescription: String?
	public var beginBroadcasting:  Date?
	public var endBroadcasting:    Date?
	public var scheduledBroadcast: Date?
	public var broadcasting:       Date?
	public var user:               UserDTO?
	public var created:            Date?
	public var updated:            Date?

	public init(
		id:                 UUID     = UUID(),
		userID:             UUID?    = nil,
		name:               String?  = nil,
		channelDescription: String?  = nil,
		beginBroadcasting:  Date?    = nil,
		endBroadcasting:    Date?    = nil,
		scheduledBroadcast: Date?    = nil,
		broadcasting:       Date?    = nil,
		user:               UserDTO? = nil,
		created:            Date?    = nil,
		updated:            Date?    = nil
	) {
		self.id                 = id
		self.userID             = userID
		self.name               = name
		self.channelDescription = channelDescription
		self.beginBroadcasting  = beginBroadcasting
		self.endBroadcasting    = endBroadcasting
		self.scheduledBroadcast = scheduledBroadcast
		self.broadcasting       = broadcasting
		self.user               = user
		self.created            = created
		self.updated            = updated
	}
}

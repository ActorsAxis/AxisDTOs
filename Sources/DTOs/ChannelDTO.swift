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
	public var userID:             UUID
	public var title:              String
	public var description:        String?
	public var beginBroadcasting:  Date?
	public var endBroadcasting:    Date?
	public var scheduledBroadcast: Date?
	public var broadcasting:       Date?
	public var user:               UserDTO?
	public let created:            Date?
	public let updated:            Date?

	public init(
		id:                 UUID     = UUID(),
		userID:             UUID     = UUID(),
		title:              String,
		description:        String?  = nil,
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
		self.title              = title
		self.description        = description
		self.beginBroadcasting  = beginBroadcasting
		self.endBroadcasting    = endBroadcasting
		self.scheduledBroadcast = scheduledBroadcast
		self.broadcasting       = broadcasting
		self.user               = user
		self.created            = created
		self.updated            = updated
	}
}

//
//  ChannelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/12/24.
//

import Foundation

public struct ChannelDTO: Codable,  Sendable,
						  Hashable, Identifiable {
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

	public let id:              UUID
	public let title:           String
	public let description:     String?
	public let startLivestream: Date?
	public let endLivestream:   Date?
	public let scheduled:       Date?
	public let user:            User?

	public init(
		id:              UUID    = UUID(),
		title:           String,
		description:     String? = nil,
		startLivestream: Date?   = nil,
		endLivestream:   Date?   = nil,
		scheduled:       Date?   = nil,
		user:            User?   = nil
	) {
		self.id              = id
		self.title           = title
		self.description     = description
		self.startLivestream = startLivestream
		self.endLivestream   = endLivestream
		self.scheduled       = scheduled
		self.user            = user
	}
}

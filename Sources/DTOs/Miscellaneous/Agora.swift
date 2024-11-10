//
//  Agora.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/9/24.
//

import Foundation

public struct AgoraTokenRequest: Codable, Sendable {
	public enum Role: Int, Codable, Sendable {
		case publisher  = 1
		case subscriber = 2
	}

	public let channel:  String
	public let uniqueID: UInt
	public let role:     Role

	public init(
		channel:  String,
		uniqueID: UInt,
		role:     Role
	) {
		self.channel  = channel
		self.uniqueID = uniqueID
		self.role     = role
	}

	public init(
		channel: String,
		userID:  UUID,
		role:    Role
	) {
		self.channel  = channel
		self.uniqueID = userID.uid
		self.role     = role
	}
}

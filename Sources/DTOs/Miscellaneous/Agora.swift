//
//  Agora.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/9/24.
//

import Foundation

public struct AgoraTokenRequest: Codable, Sendable {
	public enum Role: String {
		case publisher
		case subscriber
	}

	public let channel: String
	public let userID:  UUID
	public let role:    String

	public init(
		channel: String,
		userID:  UUID,
		role:    Role
	) {
		self.channel = channel
		self.userID  = userID
		self.role    = role.rawValue
	}
}

//
//  Agora.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/9/24.
//

import Foundation

public struct AgoraAppIDResponse: Codable, Sendable {
	public let appID: String

	public init(appID: String) {
		self.appID = appID
	}
}

// MARK: -

public struct AgoraRTCTokenRequest: Codable, Sendable {
	public enum Role: Int, Codable, Sendable {
		case broadcaster = 1
		case audience    = 2
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
		self.init(
			channel:  channel,
			uniqueID: userID.uniqueID,
			role:     role
		)
	}
}

// MARK: -

public struct AgoraRTMTokenRequest: Codable, Sendable {
	public let userID: UUID

	public init(
		userID: UUID
	) {
		self.userID = userID
	}
}

// MARK: -

public struct AgoraTokenResponse: Codable, Sendable {
	public let token: String

	public init(token: String) {
		self.token = token
	}
}

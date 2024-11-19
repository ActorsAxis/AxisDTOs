//
//  Agora.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/9/24.
//

import Foundation

public struct AgoraRTCTokenRequest: Codable, Sendable {
	public let channel:  String
	public let uniqueID: UInt
	public let role:     Role

	public enum Role: Int, Codable, Sendable {
		case broadcaster = 1
		case audience    = 2
	}

#if false
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
#endif
}

// MARK: -

public struct AgoraRTMTokenRequest: Codable, Sendable {
	public let userID: UUID

#if false
	public init(
		userID: UUID
	) {
		self.userID = userID
	}
#endif
}

// MARK: -

public struct AgoraAppIDResponse: Codable, Sendable {
	public let appID: String

#if false
	public init(appID: String) {
		self.appID = appID
	}
#endif
}

// MARK: -

public struct AgoraTokenResponse: Codable, Sendable {
	public let token: String

#if false
	public init(token: String) {
		self.token = token
	}
#endif
}

// MARK: -

public struct AgoraUserResponse: Codable, Sendable {
	public let action:          String
	public let application:     String
	public let applicationName: String
	public let data:           [Data]
	public let duration:        Int
	public let entities:       [Entity]
	public let organization:    String
	public let path:            String
	public let timestamp:       Int
	public let uri:             String

	// MARK: -

	public struct Data: Codable, Sendable {
		public let username:               String
		public let registerUserFailReason: String
	}

	// MARK: -

	public struct Entity: Codable, Sendable {
		let activated: Bool
		let created:   Int
		let modified:  Int
		let type:      String
		let username:  String
		let uuid:      String
	}
}

//
//  Agora.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/9/24.
//

import Foundation

public struct AgoraRTCTokenRequest: Codable, Sendable {
	public let channel:  String
	public let uniqueID: UInt32
	public let role:     Role

	public init(
		channel:  String,
		uniqueID: UInt32,
		role:     Role
	) {
		self.channel  = channel
		self.uniqueID = uniqueID
		self.role     = role
	}

	public enum Role: Int, Codable, Sendable {
		case broadcaster = 1
		case audience    = 2
	}
}

// MARK: -

public struct AgoraRTMRegisterRequest: Codable, Sendable {
	public let userID:   UUID
	public let username: String

	public init(
		userID:   UUID,
		username: String
	) {
		self.userID   = userID
		self.username = username
	}
}

public struct AgoraRTMRegisterResponse: Codable, Sendable {
	public let username: String

	public init(username: String) {
		self.username = username
	}
}

// MARK: -

public struct AgoraRTMTokenRequest: Codable, Sendable {
	public let userID: UUID

	public init(userID: UUID) {
		self.userID = userID
	}
}

// MARK: -

public struct AgoraAppIDResponse: Codable, Sendable {
	public let appID: String

	public init(appID: String) {
		self.appID = appID
	}
}

// MARK: -

public struct AgoraTokenResponse: Codable, Sendable {
	public let token: String

	public init(token: String) {
		self.token = token
	}
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

	public init(
		action:          String,
		application:     String,
		applicationName: String,
		data:           [Data],
		duration:        Int,
		entities:       [Entity],
		organization:    String,
		path:            String,
		timestamp:       Int,
		uri:             String
	) {
		self.action          = action
		self.application     = application
		self.applicationName = applicationName
		self.data            = data
		self.duration        = duration
		self.entities        = entities
		self.organization    = organization
		self.path            = path
		self.timestamp       = timestamp
		self.uri             = uri
	}

	// MARK: -

	public struct Data: Codable, Sendable {
		public let username:               String
		public let registerUserFailReason: String

		public init(
			username:               String,
			registerUserFailReason: String
		) {
			self.username               = username
			self.registerUserFailReason = registerUserFailReason
		}
	}

	// MARK: -

	public struct Entity: Codable, Sendable {
		public let activated: Bool
		public let created:   Int
		public let modified:  Int
		public let type:      String
		public let username:  String
		public let uuid:      String

		public init(
			activated: Bool,
			created:   Int,
			modified:  Int,
			type:      String,
			username:  String,
			uuid:      String
		) {
			self.activated = activated
			self.created   = created
			self.modified  = modified
			self.type      = type
			self.username  = username
			self.uuid      = uuid
		}
	}
}

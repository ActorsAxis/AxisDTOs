//
//  Vonage.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/1/24.
//

import Foundation

public enum VonageRequest {
	public struct Request: Codable, Sendable {
		public struct Workflow: Codable, Sendable {
			public enum Channel: String {
				case email
				case silentAuth = "silent_auth"
				case sms
				case voice
				case whatsApp
			}

			public let channel:   String
			public let to:        String
			public let from:      String?
			public let entityID:  String?
			public let contentID: String?
			public let appHash:   String?

			public init(
				channel:   Channel,
				to:        String,
				from:      String? = nil,
				entityID:  String? = nil,
				contentID: String? = nil,
				appHash:   String? = nil
			) {
				self.channel   = channel.rawValue.lowercased()
				self.to        = to
				self.from      = from
				self.entityID  = entityID
				self.contentID = contentID
				self.appHash   = appHash
			}
		}

		public let locale:          String?
		public let channelTimeout:  Int?
		public let clientRef:       String?
		public let codeLength:      Int?
		public let code:            String?
		public let brand:           String
		public let templateID:      UUID?
		public let workflow:       [Workflow]

		public init(
			locale:          String? = nil,
			channelTimeout:  Int?    = nil,
			clientRef:       String? = nil,
			codeLength:      Int?    = nil,
			code:            String? = nil,
			brand:           String  = .vonage.brand,
			templateID:      UUID?   = nil,
			workflow:       [Workflow]
		) {
			self.locale          = locale
			self.channelTimeout  = channelTimeout
			self.clientRef       = clientRef
			self.codeLength      = codeLength
			self.code            = code
			self.brand           = brand
			self.templateID      = templateID
			self.workflow        = workflow
		}
	}

	// MARK: -

	public struct Response: Codable, Sendable {
		public let requestID: String
		public let checkURL:  URL?

		public init(
			requestID: String,
			checkURL:  URL? = nil
		) {
			self.requestID = requestID
			self.checkURL  = checkURL
		}
	}
}

// MARK: -

public enum VonageVerify {
	public struct Request: Codable, Sendable {
		public let code: String

		public init(code: String) {
			self.code = code
		}
	}

	// MARK: -

	public struct Response: Codable, Sendable {
		public let requestID: String
		public let status:    String

		public init(
			requestID: String,
			status:    String
		) {
			self.requestID = requestID
			self.status    = status
		}
	}
}

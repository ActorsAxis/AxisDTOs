//
//  Vonage.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/1/24.
//

import Foundation

public enum VonageRequest {
	public struct Request: Codable, Sendable {
		public var locale:          String? = nil
		public var channelTimeout:  Int?    = nil
		public var clientRef:       String? = nil
		public var codeLength:      Int?    = nil
		public var code:            String? = nil
		public var brand:           String  = .vonage.brand
		public var templateID:      UUID?   = nil
		public let workflow:       [Workflow]

		// MARK: -

		public struct Workflow: Codable, Sendable {
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

			// MARK: -

			public enum Channel: String {
				case email
				case silentAuth = "silent_auth"
				case sms
				case voice
				case whatsApp
			}
		}

#if false
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
#endif
	}

	// MARK: -

	public struct Response: Codable, Sendable {
		public let requestID: String
		public var checkURL:  URL? = nil

#if false
		public init(
			requestID: String,
			checkURL:  URL? = nil
		) {
			self.requestID = requestID
			self.checkURL  = checkURL
		}
#endif
	}
}

// MARK: -

public enum VonageVerify {
	public struct Request: Codable, Sendable {
		public let code: String

#if false
		public init(code: String) {
			self.code = code
		}
#endif
	}

	// MARK: -

	public struct Response: Codable, Sendable {
		public let requestID: String
		public let status:    String

#if false
		public init(
			requestID: String,
			status:    String
		) {
			self.requestID = requestID
			self.status    = status
		}
#endif
	}
}

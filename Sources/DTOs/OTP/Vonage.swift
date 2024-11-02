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
				case silentAuthentication = "silent_auth"
				case sms
				case voice
				case whatsApp             = "whatsapp"
			}

			public let channel:         String
			public let to:              String
			public let from:            String?
			public let entityID:        String?
			public let contentID:       String?
			public let applicationHash: String?

			public init(
				channel:         Channel,
				to:              String,
				from:            String? = nil,
				entityID:        String? = nil,
				contentID:       String? = nil,
				applicationHash: String? = nil
			) {
				self.channel         = channel.rawValue
				self.to              = to
				self.from            = from
				self.entityID        = entityID
				self.contentID       = contentID
				self.applicationHash = applicationHash
			}

			private enum CodingKeys: String, CodingKey {
				case channel
				case to
				case from
				case entityID        = "entity_id"
				case contentID       = "content_id"
				case applicationHash = "app_hash"
			}
		}

		public let locale:          String?
		public let channelTimeout:  Int?
		public let clientReference: String?
		public let codeLength:      Int?
		public let code:            String?
		public let brand:           String
		public let templateID:      UUID?
		public let workflow:       [Workflow]

		public init(
			locale:          String? = nil,
			channelTimeout:  Int?    = nil,
			clientReference: String? = nil,
			codeLength:      Int?    = nil,
			code:            String? = nil,
			brand:           String  = .vonage.brand,
			templateID:      UUID?   = nil,
			workflow:       [Workflow]
		) {
			self.locale          = locale
			self.channelTimeout  = channelTimeout
			self.clientReference = clientReference
			self.codeLength      = codeLength
			self.code            = code
			self.brand           = brand
			self.templateID      = templateID
			self.workflow        = workflow
		}

		private enum CodingKeys: String, CodingKey {
			case locale
			case channelTimeout  = "channel_timeout"
			case clientReference = "client_ref"
			case codeLength      = "code_length"
			case code
			case brand
			case templateID      = "template_id"
			case workflow
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

		private enum CodingKeys: String, CodingKey {
			case requestID = "request_id"
			case checkURL  = "check_url"
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

		private enum CodingKeys: String, CodingKey {
			case requestID = "request_id"
			case status
		}
	}
}

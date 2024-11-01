//
//  VonageDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/1/24.
//

import Foundation

public struct VonageRequestDTO: Codable, Sendable {
	public enum ChannelType: String {
		case email
		case silentAuthentication = "silent_auth"
		case sms
		case voice
		case whatsApp             = "whatsapp"
	}

	public let channel: String
	public let from:    String?
	public let to:      String

	public init(
		channel: ChannelType,
		from:    String? = nil,
		to:      String
	) {
		self.channel = channel.rawValue
		self.from    = from
		self.to      = to
	}
}

// MARK: -

public struct VonageResponseDTO: Codable, Sendable {
	public let requestID: String
	public let checkURL:  URL

	public init(
		requestID: String,
		checkURL:  URL
	) {
		self.requestID = requestID
		self.checkURL  = checkURL
	}

	private enum CodingKeys: String, CodingKey {
		case requestID = "request_id"
		case checkURL  = "check_url"
	}
}

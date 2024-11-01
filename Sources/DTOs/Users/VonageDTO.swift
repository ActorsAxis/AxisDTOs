//
//  VonageDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/1/24.
//

public struct VonageDTO: Codable, Sendable {
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

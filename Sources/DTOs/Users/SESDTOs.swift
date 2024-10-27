//
//  SESDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/26/24.
//

public struct SESResponseDTO: Codable, Sendable {
	public var messageID: String

	public init(messageID: String) {
		self.messageID = messageID
	}
}

//
//  SNSDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/26/24.
//

public struct SNSResponseDTO: Codable, Sendable {
	public var messageID:      String?
	public var sequenceNumber: String?

	public init(
		messageID:      String? = nil,
		sequenceNumber: String? = nil
	) {
		self.messageID      = messageID
		self.sequenceNumber = sequenceNumber
	}
}

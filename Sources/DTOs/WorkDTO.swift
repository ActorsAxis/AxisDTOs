//
//  WorkDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct WorkDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public let id:         UUID
	public let userID:     UUID
	public let workTypeID: UUID
	public var name:       String?
	public var startDate:  Date?
	public var endDate:    Date?

	public init(
		id:         UUID    = UUID(),
		userID:     UUID,
		workTypeID: UUID,
		name:       String? = nil,
		startDate:  Date?   = nil,
		endDate:    Date?   = nil
	) {
		self.id         = id
		self.userID     = userID
		self.workTypeID = workTypeID
		self.name       = name
		self.startDate  = startDate
		self.endDate    = endDate
	}
}

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
	public let workTypeID: UUID
	public let name:       String?
	public let startDate:  Date?
	public let endDate:    Date?

	public init(
		id:         UUID    = UUID(),
		workTypeID: UUID,
		name:       String? = nil,
		startDate:  Date?   = nil,
		endDate:    Date?   = nil
	) {
		self.id         = id
		self.workTypeID = workTypeID
		self.name       = name
		self.startDate  = startDate
		self.endDate    = endDate
	}
}

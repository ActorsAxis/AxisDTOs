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
	public var workTypeID: UUID
	public var startDate:  Date?
	public var endDate:    Date?

	public init(
		id:         UUID  = UUID(),
		workTypeID: UUID,
		startDate:  Date? = nil,
		endDate:    Date? = nil
	) {
		self.id         = id
		self.workTypeID = workTypeID
		self.startDate  = startDate
		self.endDate    = endDate
	}
}

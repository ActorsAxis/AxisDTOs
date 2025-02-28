//
//  WorkDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct WorkDTO: Codable, Hashable, Sendable,
					   Identifiable {
	public let id:         UUID
	public var userID:     UUID?
	public var workTypeID: UUID?
	public var name:       String?
	public var startDate:  Date?
	public var endDate:    Date?
	public var created:    Date?
	public var updated:    Date?

	public init(
		id:         UUID    = UUID(),
		userID:     UUID?   = nil,
		workTypeID: UUID?   = nil,
		name:       String? = nil,
		startDate:  Date?   = nil,
		endDate:    Date?   = nil,
		created:    Date?   = nil,
		updated:    Date?   = nil
	) {
		self.id         = id
		self.userID     = userID
		self.workTypeID = workTypeID
		self.name       = name
		self.startDate  = startDate
		self.endDate    = endDate
		self.created    = created
		self.updated    = updated
	}
}

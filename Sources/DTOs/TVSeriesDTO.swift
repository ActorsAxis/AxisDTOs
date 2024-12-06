//
//  TVSeriesDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/20/24.
//

import Foundation

public struct TVSeriesDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public let id:         UUID
	public var workID:     UUID
	public var name:       String?
	public var airDate:    Date?
	public var creditedAs: String?
	public var season:     Int?
	public var episode:    Int?
	public let created:    Date?
	public let updated:    Date?

	public init(
		id:         UUID    = UUID(),
		workID:     UUID    = UUID(),
		name:       String? = nil,
		airDate:    Date?   = nil,
		creditedAs: String? = nil,
		season:     Int?    = nil,
		episode:    Int?    = nil,
		created:    Date?   = nil,
		updated:    Date?   = nil
	) {
		self.id         = id
		self.workID     = workID
		self.name       = name
		self.airDate    = airDate
		self.creditedAs = creditedAs
		self.season     = season
		self.episode    = episode
		self.created    = created
		self.updated    = updated
	}
}

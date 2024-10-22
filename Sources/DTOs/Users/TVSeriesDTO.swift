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
	public var name:       String?
	public var creditedAs: String?
	public var season:     Int?
	public var episode:    Int?
	public var title:      String?
	public var startYear:  Int?
	public var endYear:    Int?

	public init(
		id:         UUID    = UUID(),
		name:       String? = nil,
		creditedAs: String? = nil,
		season:     Int?    = nil,
		episode:    Int?    = nil,
		title:      String? = nil,
		startYear:  Int?    = nil,
		endYear:    Int?    = nil
	) {
		self.id         = id
		self.name       = name
		self.creditedAs = creditedAs
		self.season     = season
		self.episode    = episode
		self.title      = title
		self.startYear  = startYear
		self.endYear    = endYear
	}
}

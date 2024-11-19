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
	public let name:       String?
	public let airDate:    Date?
	public let creditedAs: String?
	public let season:     Int?
	public let episode:    Int?

	public init(
		id:         UUID    = UUID(),
		name:       String? = nil,
		airDate:    Date?   = nil,
		creditedAs: String? = nil,
		season:     Int?    = nil,
		episode:    Int?    = nil
	) {
		self.id         = id
		self.name       = name
		self.airDate    = airDate
		self.creditedAs = creditedAs
		self.season     = season
		self.episode    = episode
	}
}

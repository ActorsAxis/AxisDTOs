//
//  TVSeriesDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/20/24.
//

import Foundation

public struct TVSeriesDTO: Codable,  Sendable,
						   Hashable, Identifiable {
	public var id:         UUID    = UUID()
	public var name:       String? = nil
	public var airDate:    Date?   = nil
	public var creditedAs: String? = nil
	public var season:     Int?    = nil
	public var episode:    Int?    = nil

#if false
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
#endif
}

//
//  CurrentlyFilmingEpisodeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/20/24.
//

import Foundation

public struct CurrentlyFilmingEpisodeDTO: Codable, Sendable {
	public var id:         UUID?
	public var name:       String?
	public var number:     Int?
	public var creditedAs: String?

	public init(
		id:         UUID?   = nil,
		name:       String? = nil,
		number:     Int?    = nil,
		creditedAs: String? = nil
	) {
		self.id         = id
		self.name       = name
		self.number     = number
		self.creditedAs = creditedAs
	}
}

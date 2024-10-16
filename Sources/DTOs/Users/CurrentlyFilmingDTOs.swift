//
//  CurrentlyFilmingDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct CurrentlyFilmingRequestDTO: Codable, Sendable {
	public let id:             UUID?
	public let userId:         UUID
	public let actorType:      String?
	public let productionName: String?
	public let productionType: String?
	public let season:         String?
	public let creditedAs:     String?
	public let episode:        String?

	public init(
		id:             UUID?   = nil,
		userID:         UUID,
		actorType:      String? = nil,
		productionName: String? = nil,
		productionType: String? = nil,
		season:         String? = nil,
		creditedAs:     String? = nil,
		episode:        String? = nil
	) {
		self.id             = id
		self.userId         = userID
		self.actorType      = actorType
		self.productionName = productionName
		self.productionType = productionType
		self.season         = season
		self.creditedAs     = creditedAs
		self.episode        = episode
	}
}

// MARK: -

public struct CurrentlyFilmingResponseDTO: Codable,  Sendable,
										   Hashable, Identifiable {
	public let id:             UUID
	public let actorType:      String?
	public let productionName: String?
	public let productionType: String?
	public let season:         String?
	public let creditedAs:     String?
	public let episode:        String?

	public init(
		id:             UUID,
		actorType:      String? = nil,
		productionName: String? = nil,
		productionType: String? = nil,
		season:         String? = nil,
		creditedAs:     String? = nil,
		episode:        String? = nil
	) {
		self.id             = id
		self.actorType      = actorType
		self.productionName = productionName
		self.productionType = productionType
		self.season         = season
		self.creditedAs     = creditedAs
		self.episode        = episode
	}
}

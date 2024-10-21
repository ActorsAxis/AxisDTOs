//
//  CurrentlyFilmingDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct CurrentlyFilmingRequest: Codable, Sendable {
	public var id:             UUID?
	public var actorType:      String?
	public var productionName: String?
	public var productionType: String?
	public var season:         String?
	public var creditedAs:     String?
	public var episode:        String?

	public init(
		id:             UUID?   = nil,
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

	public init(from response: CurrentlyFilmingResponse) {
		self.init(
			id:             response.id,
			actorType:      response.actorType,
			productionName: response.productionName,
			productionType: response.productionType,
			season:         response.season,
			creditedAs:     response.creditedAs,
			episode:        response.episode
		)
	}
}

// MARK: -

public struct CurrentlyFilmingResponse: Codable,  Sendable,
										Hashable, Identifiable {
	public var id:             UUID
	public var actorType:      String?
	public var productionName: String?
	public var productionType: String?
	public var season:         String?
	public var creditedAs:     String?
	public var episode:        String?

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

	public mutating func copyNonOptionals(from request: CurrentlyFilmingRequest) {
		if let id             = request.id             { self.id             = id             }
		if let actorType      = request.actorType      { self.actorType      = actorType      }
		if let productionName = request.productionName { self.productionName = productionName }
		if let productionType = request.productionType { self.productionType = productionType }
		if let season         = request.season         { self.season         = season         }
		if let creditedAs     = request.creditedAs     { self.creditedAs     = creditedAs     }
		if let episode        = request.episode        { self.episode        = episode        }
	}
}

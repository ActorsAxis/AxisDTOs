//
//  WorkDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct WorkDTO: Codable, Sendable {
	public let id:             UUID
	public var actorType:      String?
	public var productionName: String?
	public var productionType: String?
	public var season:         String?
	public var creditedAs:     String?
	public var episode:        String?

	public init(
		id:             UUID    = UUID(),
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

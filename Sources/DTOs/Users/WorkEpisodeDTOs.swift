//
//  WorkEpisodeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/20/24.
//

import Foundation

public struct WorkEpisodeRequest: Codable, Sendable {
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

	public init(from response: WorkEpisodeResponse) {
		id         = response.id
		name       = response.name
		number     = response.number
		creditedAs = response.creditedAs
	}
}

// MARK: -

public struct WorkEpisodeResponse: Codable,  Sendable,
								   Hashable, Identifiable {
	public var id:         UUID
	public var name:       String?
	public var number:     Int?
	public var creditedAs: String?

	public init(
		id:         UUID,
		name:       String? = nil,
		number:     Int?    = nil,
		creditedAs: String? = nil
	) {
		self.id         = id
		self.name       = name
		self.number     = number
		self.creditedAs = creditedAs
	}

	public mutating func copyNonOptionals(from request: WorkEpisodeRequest) {
		if let id         = request.id         { self.id         = id         }
		if let name       = request.name       { self.name       = name       }
		if let number     = request.number     { self.number     = number     }
		if let creditedAs = request.creditedAs { self.creditedAs = creditedAs }
	}
}

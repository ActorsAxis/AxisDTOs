//
//  MediumDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumRequest: Codable, Sendable {
	public var id:     UUID?
	public var medium: String?

	public init(
		id:     UUID?   = nil,
		medium: String? = nil
	) {
		self.id     = id
		self.medium = medium
	}

	public init(from response: MediumResponse) {
		self.init(
			id:     response.id,
			medium: response.medium
		)
	}
}

// MARK: -

public struct MediumResponse: Codable,  Sendable,
							  Hashable, Identifiable {
	public var id:     UUID
	public var medium: String?

	public init(
		id:     UUID,
		medium: String? = nil
	) {
		self.id     = id
		self.medium = medium
	}

	public mutating func copyNonOptionals(from request: MediumRequest) {
		if let id     = request.id     { self.id     = id     }
		if let medium = request.medium { self.medium = medium }
	}
}

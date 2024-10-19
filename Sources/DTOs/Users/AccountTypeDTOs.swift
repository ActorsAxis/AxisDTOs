//
//  AccountTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct AccountTypeRequest: Codable, Sendable {
	public var id:   UUID?
	public var name: String

	public init(
		id:   UUID?,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public init(response: AccountTypeResponse) {
		self.init(
			id:   response.id,
			name: response.name
		)
	}
}

// MARK: -

public struct AccountTypeResponse: Codable,  Sendable,
								   Hashable, Identifiable {
	public var id:   UUID
	public var name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public mutating func copyNonOptionals(from request: AccountTypeRequest) {
		if let id = request.id { self.id = id }
		name = request.name
	}
}

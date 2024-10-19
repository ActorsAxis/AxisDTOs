//
//  WorkTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct WorkTypeRequest: Codable,  Sendable {
	public var id:   UUID?
	public var name: String

	public init(
		id:   UUID? = nil,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public init(response: WorkTypeResponse) {
		self.init(
			id:   response.id,
			name: response.name
		)
	}
}

// MARK: -

public struct WorkTypeResponse: Codable,  Sendable,
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

	public mutating func copyNonOptionals(from request: WorkTypeRequest) {
		if let id = request.id { self.id = id }
		name = request.name
	}
}

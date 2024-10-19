//
//  WorkTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct WorkTypeRequest: Codable,  Sendable {
	public var id:   UUID
	public var name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public init(from response: WorkTypeResponse) {
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

	public init(from request: WorkTypeRequest) {
		self.init(
			id:   request.id,
			name: request.name
		)
	}
}

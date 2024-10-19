//
//  MediumDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumRequest: Codable, Sendable {
	public var id:     UUID?
	public var userID: UUID
	public var medium: String?

	public init(
		id:     UUID?   = nil,
		userID: UUID,
		medium: String? = nil
	) {
		self.id     = id
		self.userID = userID
		self.medium = medium
	}

	public init(from response: MediumResponse) {
		self.init(
			id:     response.id,
			userID: response.userID,
			medium: response.medium
		)
	}
}

// MARK: -

public struct MediumResponse: Codable,  Sendable,
							  Hashable, Identifiable {
	public var id:     UUID
	public var userID: UUID
	public var medium: String?

	public init(
		id:     UUID,
		userID: UUID,
		medium: String? = nil
	) {
		self.id     = id
		self.userID = userID
		self.medium = medium
	}

	public mutating func copyNonOptionals(from request: MediumRequest) {
		if let id = request.id { self.id = id }
		userID = request.userID
		if let medium = request.medium { self.medium = medium }
	}
}

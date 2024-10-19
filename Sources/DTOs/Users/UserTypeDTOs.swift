//
//  UserTypeDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

#if false
import Foundation

public struct UserTypeRequest: Codable,  Sendable {
	public var id:   UUID
	public var name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}

	public init(from response: UserTypeResponse) {
		self.init(
			id:   response.id,
			name: response.name
		)
	}
}

// MARK: -

public struct UserTypeResponse: Codable,  Sendable,
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

	public init(from request: UserTypeRequest) {
		self.init(
			id:   request.id,
			name: request.name
		)
	}
}
#endif

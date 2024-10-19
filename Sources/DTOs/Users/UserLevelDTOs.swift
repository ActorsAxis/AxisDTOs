//
//  UserLevelDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

#if false
import Foundation

public struct UserLevelRequest: Codable,  Sendable {
	public var id:          UUID
	public var title:       String
	public var coinsNeeded: Int

	public init(
		id:          UUID,
		title:       String,
		coinsNeeded: Int
	) {
		self.id          = id
		self.title       = title
		self.coinsNeeded = coinsNeeded
	}

	public init(from response: UserLevelResponse) {
		self.init(
			id:          response.id,
			title:       response.title,
			coinsNeeded: response.coinsNeeded
		)
	}
}

// MARK: -

public struct UserLevelResponse: Codable,  Sendable,
								 Hashable, Identifiable {
	public var id:          UUID
	public var title:       String
	public var coinsNeeded: Int

	public init(
		id:          UUID,
		title:       String,
		coinsNeeded: Int
	) {
		self.id          = id
		self.title       = title
		self.coinsNeeded = coinsNeeded
	}

	public init(from request: UserLevelRequest) {
		self.init(
			id:          request.id,
			title:       request.title,
			coinsNeeded: request.coinsNeeded
		)
	}
}
#endif

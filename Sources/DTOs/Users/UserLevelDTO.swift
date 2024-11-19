//
//  UserLevelDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct UserLevelDTO: Codable,  Sendable,
							Hashable, Identifiable {
	public let id:          UUID
	public let title:       String
	public let coinsNeeded: Int

#if false
	public init(
		id:          UUID,
		title:       String,
		coinsNeeded: Int
	) {
		self.id          = id
		self.title       = title
		self.coinsNeeded = coinsNeeded
	}
#endif
}

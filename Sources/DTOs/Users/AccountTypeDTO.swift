//
//  AccountTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/15/24.
//

import Foundation

public struct AccountTypeDTO: Codable,  Sendable,
							  Hashable, Identifiable {
	public let id:   UUID
	public let name: String

	public init(
		id:   UUID,
		name: String
	) {
		self.id   = id
		self.name = name
	}
}

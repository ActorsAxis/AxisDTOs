//
//  SocialMediumTypeDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/28/24.
//

import Foundation

public struct SocialMediumTypeDTO: Codable,  Sendable,
								   Hashable, Identifiable {
	public let id:   UUID
	public let name: String
	public let logo: String?

	public init(
		id:   UUID,
		name: String,
		logo: String? = nil
	) {
		self.id   = id
		self.name = name
		self.logo = logo
	}
}

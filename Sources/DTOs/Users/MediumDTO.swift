//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTO: Codable, Sendable {
	public let id:     UUID
	public var medium: String?

	public init(
		id:     UUID    = UUID(),
		medium: String? = nil
	) {
		self.id     = id
		self.medium = medium
	}
}

//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTOt: Codable, Sendable {
	public var id:     UUID?
	public var medium: String?

	public init(
		id:     UUID?   = nil,
		medium: String? = nil
	) {
		self.id     = id
		self.medium = medium
	}
}

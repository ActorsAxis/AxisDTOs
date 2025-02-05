//
//  Dimensions.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/5/25.
//

public struct Dimensions: Codable, Hashable, Sendable {
	public var width:  Int
	public var height: Int

	public init(
		width:  Int,
		height: Int
	) {
		self.width  = width
		self.height = height
	}
}

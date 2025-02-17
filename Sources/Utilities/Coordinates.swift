//
//  Coordinates.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/1/24.
//

public struct Coordinates: Codable, Hashable, Sendable {
	public var latitude:  Double
	public var longitude: Double

	public init(
		latitude:  Double = 0,
		longitude: Double = 0
	) {
		self.latitude  = latitude
		self.longitude = longitude
	}
}

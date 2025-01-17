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
		latitude:  Double,
		longitude: Double
	) {
		self.latitude  = latitude
		self.longitude = longitude
	}
}

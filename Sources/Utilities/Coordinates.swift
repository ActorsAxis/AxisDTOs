//
//  Coordinates.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/1/24.
//

import CoreLocation

public struct Coordinates: Codable, Sendable {
	public var latitude:  Double
	public var longitude: Double

	public init(latitude: Double, longitude: Double) {
		self.latitude  = latitude
		self.longitude = longitude
	}

	public init(from coordinates: CLLocationCoordinate2D) {
		self.init(
			latitude:  coordinates.latitude,
			longitude: coordinates.longitude
		)
	}
}

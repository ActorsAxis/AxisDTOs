//
//  CLLocationCoordinate2DExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/1/24.
//

import CoreLocation

extension CLLocationCoordinate2D {
	public init(from coordinates: Coordinates) {
		self.init(
			latitude:  coordinates.latitude,
			longitude: coordinates.longitude
		)
	}
}

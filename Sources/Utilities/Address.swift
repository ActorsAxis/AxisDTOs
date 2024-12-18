//
//  Address.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/9/24.
//

public struct Address: Codable, Sendable {
	public var address: [String]
	public var city:     String
	public var state:    String
	public var postcode: String
	public var country:  String

	public init(
		address: [String],
		city:     String,
		state:    String,
		postcode: String,
		country:  String
	) {
		self.address  = address
		self.city     = city
		self.state    = state
		self.postcode = postcode
		self.country  = country
	}
}

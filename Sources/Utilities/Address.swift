//
//  Address.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 12/9/24.
//

public struct Address: Codable, Hashable, Sendable {
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

	public init(
		addressCount: Int,
		city:         String = "",
		state:        String = "",
		postCode:     String = "",
		country:      String = ""
	) {
		self.init(
			address: [String](repeating: "", count: addressCount),
			city:     city,
			state:    state,
			postcode: postCode,
			country:  country
		)
	}
}

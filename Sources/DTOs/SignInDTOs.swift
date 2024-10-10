//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenResponseDTO: Codable, Sendable {
	public let axisToken: String
	public let email:     String?

	public init(
		axisToken: String,
		email:     String? = nil
	) {
		self.axisToken = axisToken
		self.email     = email
	}
}

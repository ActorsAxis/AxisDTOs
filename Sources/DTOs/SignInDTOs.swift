//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenResponseDTO: Codable, Sendable {
	public let axisToken: String
	public let user:      UserResponseDTO?

	public init(
		axisToken: String,
		user:      UserResponseDTO? = nil

	) {
		self.axisToken = axisToken
		self.user      = user
	}
}

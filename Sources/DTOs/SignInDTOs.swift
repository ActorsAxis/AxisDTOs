//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenRequestDTO: Codable, Sendable {
	public let identityToken: String

	public init(
		identityToken: String
	) {
		self.identityToken = identityToken
	}
}

// MARK: -

public struct SignInWithIdentityTokenResponseDTO: Codable, Sendable {
	public let axisToken: String

	public init(
		axisToken: String
	) {
		self.axisToken = axisToken
	}
}

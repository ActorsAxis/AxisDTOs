//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

public struct SignInResponseDTO: Codable, Sendable {
	public let token: String

	public init(
		token: String
	) {
		self.token = token
	}
}

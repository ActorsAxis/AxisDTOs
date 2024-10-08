//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

public struct SignInRequestDTO: Codable, Sendable {
	public let email:    String
	public let password: String

	public init(
		email:    String,
		password: String
	) {
		self.email    = email
		self.password = password
	}
}

// MARK: -

public struct SignInResponseDTO: Codable, Sendable {
	public let token:   String
	public let email:   String?
	public let picture: String?

	public init(
		token:   String,
		email:   String? = nil,
		picture: String? = nil
	) {
		self.token   = token
		self.email   = email
		self.picture = picture
	}
}

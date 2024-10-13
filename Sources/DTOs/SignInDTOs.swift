//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenResponseDTO: Codable, Sendable {
	public let token:   String
	public let email:   String?
	public let picture: String?
	public let user:    UserResponseDTO?

	public init(
		token:   String,
		email:   String?          = nil,
		picture: String?          = nil,
		user:    UserResponseDTO? = nil

	) {
		self.token   = token
		self.email   = email
		self.picture = picture
		self.user    = user
	}
}

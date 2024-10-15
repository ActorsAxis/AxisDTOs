//
//  SignInDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenResponseDTO: Codable, Sendable {
	public let axisToken:  String
	public let email:      String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let picture:    String?
	public let user:       UserResponseDTO?

	public init(
		axisToken:  String,
		email:      String?          = nil,
		givenName:  String?          = nil,
		familyName: String?          = nil,
		name:       String?          = nil,
		picture:    String?          = nil,
		user:       UserResponseDTO? = nil

	) {
		self.axisToken  = axisToken
		self.email      = email
		self.givenName  = givenName
		self.familyName = familyName
		self.name       = name
		self.picture    = picture
		self.user       = user
	}
}

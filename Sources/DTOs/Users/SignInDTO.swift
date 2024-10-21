//
//  SignInDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignInWithIdentityTokenResponse: Codable, Sendable {
	public let userID:     UUID
	public let axisToken:  String
	public let email:      String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let picture:    String?

	public init(
		userID:     UUID,
		axisToken:  String,
		email:      String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		picture:    String? = nil

	) {
		self.userID     = userID
		self.axisToken  = axisToken
		self.email      = email
		self.givenName  = givenName
		self.familyName = familyName
		self.name       = name
		self.picture    = picture
	}
}

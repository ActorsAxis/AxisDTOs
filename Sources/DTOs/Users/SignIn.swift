//
//  SignIn.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/3/24.
//

import Foundation

public struct SignUpWithEmailRequest: Codable, Sendable {
	public let code:      String
	public let requestID: String
	public var email:     String
	public let password:  String

#if false
	public init(
		code:      String,
		requestID: String,
		email:     String,
		password:  String
	) {
		self.code      = code
		self.requestID = requestID
		self.email     = email
		self.password  = password
	}
#endif
}

// MARK: -

public struct SignInWithEmailRequest: Codable, Sendable {
	public var email:    String
	public let password: String

#if false
	public init(
		email:    String,
		password: String
	) {
		self.email    = email
		self.password = password
	}
#endif
}

// MARK: -

public struct SignInResponse: Codable, Sendable {
	public let userID:     UUID
	public let axisToken:  String
	public var email:      String? = nil
	public var givenName:  String? = nil
	public var familyName: String? = nil
	public var name:       String? = nil
	public var picture:    String? = nil

#if false
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
#endif
}

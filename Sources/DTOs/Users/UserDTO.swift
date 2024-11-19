//
//  UserDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public var id: UUID = UUID()

	public var accountType: UUID? = nil
	public var userLevel:   UUID? = nil
	public var userType:    UUID? = nil

	public var email:      String? = nil
	public var password:   String? = nil
	public var issuer:     String? = nil
	public var subject:    String? = nil
	public var givenName:  String? = nil
	public var familyName: String? = nil
	public var name:       String? = nil
	public var username:   String? = nil
	public var picture:    String? = nil
	public var biography:  String? = nil
	public var resume:     String? = nil

#if false
	public init(
		id: UUID = UUID(),

		accountType: UUID? = nil,
		userLevel:   UUID? = nil,
		userType:    UUID? = nil,

		email:      String? = nil,
		password:   String? = nil,
		issuer:     String? = nil,
		subject:    String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		username:   String? = nil,
		picture:    String? = nil,
		biography:  String? = nil,
		resume:     String? = nil
	) {
		self.id = id

		self.accountType = accountType
		self.userLevel   = userLevel
		self.userType    = userType

		self.email      = email
		self.password   = password
		self.issuer     = issuer
		self.subject    = subject
		self.givenName  = givenName
		self.familyName = familyName
		self.name       = name
		self.username   = username
		self.picture    = picture
		self.biography  = biography
		self.resume     = resume
	}
#endif
}

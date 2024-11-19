//
//  UserDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public let id: UUID

	public let accountType: UUID?
	public let userLevel:   UUID?
	public let userType:    UUID?

	public let email:      String?
	public let password:   String?
	public let issuer:     String?
	public let subject:    String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let username:   String?
	public let picture:    String?
	public let biography:  String?
	public let resume:     String?

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
}

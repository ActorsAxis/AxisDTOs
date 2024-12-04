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

	public var accountTypeID: UUID?
	public var unionTypeID:   UUID?
	public var userLevelID:   UUID?
	public var userTypeID:    UUID?

	public var email:      String?
	public var password:   String?
	public var issuer:     String?
	public var subject:    String?
	public var givenName:  String?
	public var familyName: String?
	public var name:       String?
	public var username:   String?
	public var picture:    String?
	public var biography:  String?
	public var resume:     String?
	public let created:    Date?
	public let updated:    Date?

	public init(
		id: UUID = UUID(),

		accountTypeID: UUID? = nil,
		unionTypeID:   UUID? = nil,
		userLevelID:   UUID? = nil,
		userTypeID:    UUID? = nil,

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
		resume:     String? = nil,
		created:    Date?   = nil,
		updated:    Date?   = nil
	) {
		self.id = id

		self.accountTypeID = accountTypeID
		self.unionTypeID   = unionTypeID
		self.userLevelID   = userLevelID
		self.userTypeID    = userTypeID

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
		self.created    = created
		self.updated    = updated
	}
}

//
//  UserDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserDTO: Codable, Sendable {
	public var id: UUID?

	public var accountType: UUID?
	public var userLevel:   UUID?
	public var userType:    UUID?
	public var workType:    UUID?

	public var subject:    String?
	public var email:      String?
	public var password:   String?
	public var givenName:  String?
	public var familyName: String?
	public var name:       String?
	public var picture:    String?
	public var biography:  String?
	public var resume:     String?

	public init(
		id: UUID? = nil,

		accountType: UUID? = nil,
		userLevel:   UUID? = nil,
		userType:    UUID? = nil,
		workType:    UUID? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		picture:    String? = nil,
		biography:  String? = nil,
		resume:     String? = nil
	) {
		self.id = id

		self.accountType = accountType
		self.userLevel   = userLevel
		self.userType    = userType
		self.workType    = workType

		self.subject    = subject
		self.email      = email
		self.password   = password
		self.givenName  = givenName
		self.familyName = familyName
		self.name       = name
		self.picture    = picture
		self.biography  = biography
		self.resume     = resume
	}
}

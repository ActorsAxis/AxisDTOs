//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequest: Codable, Sendable {
	public let id: UUID?

	public let accountType: AccountType?
	public let userLevel:     UserLevel?
	public let userType:       UserType?
	public let workType:       WorkType?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let picture:    String?
	public let biography:  String?
	public let resume:     String?

	public let currentlyFilming: [CurrentlyFilmingRequest]
	public let headshot:                  HeadshotRequest?
	public let media:            [          MediumRequest]
	public let works:            [            WorkRequest]

	public init(
		id: UUID? = nil,

		accountType: AccountType? = nil,
		userLevel:     UserLevel? = nil,
		userType:       UserType? = nil,
		workType:       WorkType? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		picture:    String? = nil,
		biography:  String? = nil,
		resume:     String? = nil,

		currentlyFilming: [CurrentlyFilmingRequest] = [],
		headshot:                  HeadshotRequest? = nil,
		media:            [          MediumRequest] = [],
		works:            [            WorkRequest] = []
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

		self.headshot         = headshot
		self.media            = media
		self.works            = works
		self.currentlyFilming = currentlyFilming
	}
}

// MARK: -

public struct UserResponseDTO: Codable,  Sendable,
							   Hashable, Identifiable {
	public let id: UUID

	public let accountType: AccountType?
	public let userLevel:     UserLevel?
	public let userType:       UserType?
	public let workType:       WorkType?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let picture:    String?
	public let biography:  String?
	public let resume:     String?

	public let currentlyFilming: [CurrentlyFilmingResponse]
	public let headshot:                  HeadshotResponse?
	public let media:            [          MediumResponse]
	public let works:            [            WorkResponse]

	public init(
		id: UUID,

		accountType: AccountType? = nil,
		userLevel:     UserLevel? = nil,
		userType:       UserType? = nil,
		workType:       WorkType? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		picture:    String? = nil,
		biography:  String? = nil,
		resume:     String? = nil,

		currentlyFilming: [CurrentlyFilmingResponse] = [],
		headshot:                  HeadshotResponse? = nil,
		media:            [          MediumResponse] = [],
		works:            [            WorkResponse] = []
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

		self.currentlyFilming = currentlyFilming
		self.headshot         = headshot
		self.media            = media
		self.works            = works
	}
}

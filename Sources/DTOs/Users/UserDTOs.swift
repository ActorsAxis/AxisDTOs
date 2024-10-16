//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequestDTO: Codable, Sendable {
	public let id: UUID?

	public let accountType: AccountTypeDTO?
	public let userLevel:     UserLevelDTO?
	public let userType:       UserTypeDTO?
	public let workType:       WorkTypeDTO?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let pictureURL: String?
	public let biography:  String?
	public let resumeURL:  String?

	public let currentlyFilming: [CurrentlyFilmingRequestDTO]
	public let headshot:                  HeadshotRequestDTO?
	public let media:            [          MediumRequestDTO]
	public let works:            [            WorkRequestDTO]

	public init(
		id: UUID? = nil,

		accountType: AccountTypeDTO? = nil,
		userLevel:     UserLevelDTO? = nil,
		userType:       UserTypeDTO? = nil,
		workType:       WorkTypeDTO? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		pictureURL: String? = nil,
		biography:  String? = nil,
		resumeURL:  String? = nil,

		currentlyFilming: [CurrentlyFilmingRequestDTO] = [],
		headshot:                  HeadshotRequestDTO? = nil,
		media:            [          MediumRequestDTO] = [],
		works:            [            WorkRequestDTO] = []
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
		self.pictureURL = pictureURL
		self.biography  = biography
		self.resumeURL  = resumeURL

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

	public let accountType: AccountTypeDTO?
	public let userLevel:     UserLevelDTO?
	public let userType:       UserTypeDTO?
	public let workType:       WorkTypeDTO?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let pictureURL: String?
	public let biography:  String?
	public let resumeURL:  String?

	public let currentlyFilming: [CurrentlyFilmingResponseDTO]
	public let headshot:                  HeadshotResponseDTO?
	public let media:            [          MediumResponseDTO]
	public let works:            [            WorkResponseDTO]

	public init(
		id: UUID,

		accountType: AccountTypeDTO? = nil,
		userLevel:     UserLevelDTO? = nil,
		userType:       UserTypeDTO? = nil,
		workType:       WorkTypeDTO? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		pictureURL: String? = nil,
		biography:  String? = nil,
		resumeURL:  String? = nil,

		currentlyFilming: [CurrentlyFilmingResponseDTO] = [],
		headshot:                  HeadshotResponseDTO? = nil,
		media:            [          MediumResponseDTO] = [],
		works:            [            WorkResponseDTO] = []
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
		self.pictureURL = pictureURL
		self.biography  = biography
		self.resumeURL  = resumeURL

		self.currentlyFilming = currentlyFilming
		self.headshot         = headshot
		self.media            = media
		self.works            = works
	}
}

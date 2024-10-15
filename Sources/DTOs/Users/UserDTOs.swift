//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequestDTO: Codable, Sendable {
	public let id: UUID?

	public let accountType: AccountTypeRequestDTO?
	public let userLevel:     UserLevelRequestDTO?
	public let userType:       UserTypeRequestDTO?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let pictureURL: String?
	public let biography:  String?
	public let resumeURL:  String?

	public let headshot:                  HeadshotRequestDTO?
	public let media:            [          MediumRequestDTO]
	public let workHistories:    [     WorkHistoryRequestDTO]
	public let currentlyFilming: [CurrentlyFilmingRequestDTO]

	public init(
		id: UUID? = nil,

		accountType: AccountTypeRequestDTO? = nil,
		userLevel:     UserLevelRequestDTO? = nil,
		userType:       UserTypeRequestDTO? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		pictureURL: String? = nil,
		biography:  String? = nil,
		resumeURL:  String? = nil,

		headshot:                  HeadshotRequestDTO? = nil,
		media:            [          MediumRequestDTO] = [],
		workHistories:    [     WorkHistoryRequestDTO] = [],
		currentlyFilming: [CurrentlyFilmingRequestDTO] = []
	) {
		self.id = id

		self.accountType = accountType
		self.userLevel   = userLevel
		self.userType    = userType

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
		self.workHistories    = workHistories
		self.currentlyFilming = currentlyFilming
	}
}

// MARK: -

public struct UserResponseDTO: Codable,  Sendable,
							   Hashable, Identifiable {
	public let id: UUID

	public let accountType: AccountTypeResponseDTO?
	public let userLevel:     UserLevelResponseDTO?
	public let userType:       UserTypeResponseDTO?

	public let subject:    String?
	public let email:      String?
	public let password:   String?
	public let givenName:  String?
	public let familyName: String?
	public let name:       String?
	public let pictureURL: String?
	public let biography:  String?
	public let resumeURL:  String?

	public let headshot:                  HeadshotResponseDTO?
	public let media:            [          MediumResponseDTO]
	public let workHistories:    [     WorkHistoryResponseDTO]
	public let currentlyFilming: [CurrentlyFilmingResponseDTO]

	public init(
		id: UUID,

		accountType: AccountTypeResponseDTO? = nil,
		userLevel:     UserLevelResponseDTO? = nil,
		userType:       UserTypeResponseDTO? = nil,

		subject:    String? = nil,
		email:      String? = nil,
		password:   String? = nil,
		givenName:  String? = nil,
		familyName: String? = nil,
		name:       String? = nil,
		pictureURL: String? = nil,
		biography:  String? = nil,
		resumeURL:  String? = nil,

		headshot:                  HeadshotResponseDTO? = nil,
		media:            [          MediumResponseDTO] = [],
		workHistories:    [     WorkHistoryResponseDTO] = [],
		currentlyFilming: [CurrentlyFilmingResponseDTO] = []
	) {
		self.id = id

		self.accountType = accountType
		self.userLevel   = userLevel
		self.userType    = userType

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
		self.workHistories    = workHistories
		self.currentlyFilming = currentlyFilming
	}
}

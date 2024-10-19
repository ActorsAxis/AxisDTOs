//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequest: Codable, Sendable {
	public var id: UUID?

	public var accountType: AccountTypeRequest?
	public var userLevel:     UserLevelRequest?
	public var userType:       UserTypeRequest?
	public var workType:       WorkTypeRequest?

	public var subject:    String?
	public var email:      String?
	public var password:   String?
	public var givenName:  String?
	public var familyName: String?
	public var name:       String?
	public var picture:    String?
	public var biography:  String?
	public var resume:     String?

	public var currentlyFilming: [CurrentlyFilmingRequest]
	public var headshot:                  HeadshotRequest?
	public var media:            [          MediumRequest]
	public var works:            [            WorkRequest]

	public init(
		id: UUID? = nil,

		accountType: AccountTypeRequest? = nil,
		userLevel:     UserLevelRequest? = nil,
		userType:       UserTypeRequest? = nil,
		workType:       WorkTypeRequest? = nil,

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

		self.currentlyFilming = currentlyFilming
		self.headshot         = headshot
		self.media            = media
		self.works            = works
	}

	public init(from response: UserResponse) {
		self.init(
			id:               response.id,

			accountType:      response.accountType.flatMap(AccountTypeRequest.init),
			userLevel:        response.userLevel  .flatMap(UserLevelRequest  .init),
			userType:         response.userType   .flatMap(UserTypeRequest   .init),
			workType:         response.workType   .flatMap(WorkTypeRequest   .init),

			subject:          response.subject,
			email:            response.email,
			password:         response.password,
			givenName:        response.givenName,
			familyName:       response.familyName,
			name:             response.name,
			picture:          response.picture,
			biography:        response.biography,
			resume:           response.resume,

			currentlyFilming: response.currentlyFilming.map(CurrentlyFilmingRequest.init),
			headshot:         response.headshot    .flatMap(HeadshotRequest.init),
			media:            response.media           .map(MediumRequest.init),
			works:            response.works           .map(WorkRequest.init)
		)
	}
}

// MARK: -

public struct UserResponse: Codable,  Sendable,
							Hashable, Identifiable {
	public var id: UUID

	public var accountType: AccountTypeResponse?
	public var userLevel:     UserLevelResponse?
	public var userType:       UserTypeResponse?
	public var workType:       WorkTypeResponse?

	public var subject:    String?
	public var email:      String?
	public var password:   String?
	public var givenName:  String?
	public var familyName: String?
	public var name:       String?
	public var picture:    String?
	public var biography:  String?
	public var resume:     String?

	public var currentlyFilming: [CurrentlyFilmingResponse]
	public var headshot:                  HeadshotResponse?
	public var media:            [          MediumResponse]
	public var works:            [            WorkResponse]

	public init(
		id: UUID,

		accountType: AccountTypeResponse? = nil,
		userLevel:     UserLevelResponse? = nil,
		userType:       UserTypeResponse? = nil,
		workType:       WorkTypeResponse? = nil,

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

	public mutating func copyNonOptionals(from request: UserRequest) {
		if let id = request.id { self.id = id }
#if false
		if let accountType = request.accountType { self.accountType = accountType }
		if let userLevel   = request.userLevel   { self.userLevel   = userLevel }
		if let userType    = request.userType    { self.userType    = userType }
		if let workType    = request.workType    { self.workType    = workType }
#endif
		if let subject    = request.subject    { self.subject    = subject }
		if let email      = request.email      { self.email      = email   }
		if let password   = request.password   { self.password   = password }
		if let givenName  = request.givenName  { self.givenName  = givenName }
		if let familyName = request.familyName { self.familyName = familyName }
		if let name       = request.name       { self.name       = name }
		if let picture    = request.picture    { self.picture    = picture }
		if let biography  = request.biography  { self.biography  = biography }
		if let resume     = request.resume     { self.resume     = resume }

		// TODO: <#Comment#>
	}
}

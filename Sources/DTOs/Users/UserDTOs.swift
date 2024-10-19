//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequest: Codable, Sendable {
	public var id: UUID?

	public var accountTypeID: UUID?
	public var userLevelID:   UUID?
	public var userTypeID:    UUID?
	public var workTypeID:    UUID?

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

		accountTypeID: UUID? = nil,
		userLevelID:   UUID? = nil,
		userTypeID:    UUID? = nil,
		workTypeID:    UUID? = nil,

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

		self.accountTypeID = accountTypeID
		self.userLevelID   = userLevelID
		self.userTypeID    = userTypeID
		self.workTypeID    = workTypeID

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

	public init(from response: UserResponse) {
		self.init(
			id: response.id,

			accountTypeID: response.accountTypeID,
			userLevelID:   response.userLevelID,
			userTypeID:    response.userTypeID,
			workTypeID:    response.workTypeID,

			subject:    response.subject,
			email:      response.email,
			password:   response.password,
			givenName:  response.givenName,
			familyName: response.familyName,
			name:       response.name,
			picture:    response.picture,
			biography:  response.biography,
			resume:     response.resume
		)
	}
}

// MARK: -

public struct UserResponse: Codable,  Sendable,
							Hashable, Identifiable {
	public var id: UUID

	public var accountTypeID: UUID?
	public var userLevelID:   UUID?
	public var userTypeID:    UUID?
	public var workTypeID:    UUID?

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
		id: UUID,

		accountTypeID: UUID? = nil,
		userLevelID:   UUID? = nil,
		userTypeID:    UUID? = nil,
		workTypeID:    UUID? = nil,

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

		self.accountTypeID = accountTypeID
		self.userLevelID   = userLevelID
		self.userTypeID    = userTypeID
		self.workTypeID    = workTypeID

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

	public mutating func copyNonOptionals(from request: UserRequest) {
		if let id = request.id { self.id = id }

		if let accountTypeID = request.accountTypeID { self.accountTypeID = accountTypeID }
		if let userLevelID   = request.userLevelID   { self.userLevelID   = userLevelID   }
		if let userTypeID    = request.userTypeID    { self.userTypeID    = userTypeID    }
		if let workTypeID    = request.workTypeID    { self.workTypeID    = workTypeID    }

		if let subject    = request.subject    { self.subject    = subject    }
		if let email      = request.email      { self.email      = email      }
		if let password   = request.password   { self.password   = password   }
		if let givenName  = request.givenName  { self.givenName  = givenName  }
		if let familyName = request.familyName { self.familyName = familyName }
		if let name       = request.name       { self.name       = name       }
		if let picture    = request.picture    { self.picture    = picture    }
		if let biography  = request.biography  { self.biography  = biography  }
		if let resume     = request.resume     { self.resume     = resume     }
	}
}

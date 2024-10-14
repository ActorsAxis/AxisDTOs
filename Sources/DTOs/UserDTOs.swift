//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequestDTO: Codable, Sendable {
	public let id: UUID?

	public let subject:  String?
	public let email:    String?
	public let password: String?

	public let profilePictureURL: String?
	public let profileName:       String?

	public let biography:         String?
	public let headshot:                  HeadshotResponseDTO?
	public let media:            [          MediumResponseDTO]
	public let workHistories:    [     WorkHistoryResponseDTO]
	public let currentlyFilming: [CurrentlyFilmingResponseDTO]
	public let resumeURL:         String?

	public init(
		id: UUID? = nil,

		subject:  String? = nil,
		email:    String? = nil,
		password: String? = nil,

		profilePictureURL: String? = nil,
		profileName:       String? = nil,

		biography:         String?                      = nil,
		headshot:                  HeadshotResponseDTO? = nil,
		media:            [          MediumResponseDTO] = [],
		workHistories:    [     WorkHistoryResponseDTO] = [],
		currentlyFilming: [CurrentlyFilmingResponseDTO] = [],
		resumeURL:         String?                      = nil
	) {
		self.id = id

		self.subject  = subject
		self.email    = email
		self.password = password

		self.profilePictureURL = profilePictureURL
		self.profileName       = profileName

		self.biography        = biography
		self.headshot         = headshot
		self.media            = media
		self.workHistories    = workHistories
		self.currentlyFilming = currentlyFilming
		self.resumeURL        = resumeURL
	}
}

// MARK: -

public struct UserResponseDTO: Codable,  Sendable,
							   Hashable, Identifiable {
	public let id: UUID

	public let subject:  String?
	public let email:    String?
	public let password: String?

	public let profilePictureURL: String?
	public let profileName:       String?

	public let biography:         String?
	public let headshot:                  HeadshotResponseDTO?
	public let media:            [          MediumResponseDTO]
	public let workHistories:    [     WorkHistoryResponseDTO]
	public let currentlyFilming: [CurrentlyFilmingResponseDTO]
	public let resumeURL:         String?

	public init(
		id: UUID,

		subject:  String? = nil,
		email:    String? = nil,
		password: String? = nil,

		profilePictureURL: String? = nil,
		profileName:       String? = nil,

		biography:         String?                      = nil,
		headshot:                  HeadshotResponseDTO? = nil,
		media:            [          MediumResponseDTO] = [],
		workHistories:    [     WorkHistoryResponseDTO] = [],
		currentlyFilming: [CurrentlyFilmingResponseDTO] = [],
		resumeURL:         String?                      = nil
	) {
		self.id = id

		self.subject  = subject
		self.email    = email
		self.password = password

		self.profilePictureURL = profilePictureURL
		self.profileName       = profileName

		self.biography        = biography
		self.headshot         = headshot
		self.media            = media
		self.workHistories    = workHistories
		self.currentlyFilming = currentlyFilming
		self.resumeURL        = resumeURL
	}
}

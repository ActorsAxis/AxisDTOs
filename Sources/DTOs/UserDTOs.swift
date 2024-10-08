//
//  UserDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserRequestDTO: Codable, Sendable {
	public let subject:  String
	public let email:    String
	public let password: String

	public init(
		subject:  String,
		email:    String,
		password: String
	) {
		self.subject  = subject
		self.email    = email
		self.password = password
	}
}

// MARK: -

public struct UserResponseDTO: Codable, Sendable, Hashable, Identifiable {
	public let id:       UUID
	public let subject:  String
	public let email:    String
	public let password: String

	public init(
		id:       UUID,
		subject:  String,
		email:    String,
		password: String
	) {
		self.id       = id
		self.subject  = subject
		self.email    = email
		self.password = password
	}
}

//
//  UserDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

public struct UserDTO: Codable, Sendable, Hashable, Identifiable {
	public var id:       String { subject }
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

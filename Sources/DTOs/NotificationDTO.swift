//
//  NotificationDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/11/25.
//

import Foundation

public struct NotificationDTO: Codable,  Sendable,
							   Hashable, Identifiable {
	public let id:       UUID
	public var userID:   UUID?
	public var title:    String?
	public var subtitle: String?
	public var body:     String?
	public var data:    [String: String]?
	public var read:     Bool?
	public var created:  Date?
	public var updated:  Date?

	public init(
		id:       UUID             = UUID(),
		userID:   UUID?            = nil,
		title:    String?          = nil,
		subtitle: String?          = nil,
		body:     String?          = nil,
		data:    [String: String]? = nil,
		read:     Bool?            = nil,
		created:  Date?            = nil,
		updated:  Date?            = nil
	) {
		self.id       = id
		self.userID   = userID
		self.title    = title
		self.subtitle = subtitle
		self.body     = body
		self.data     = data
		self.read     = read
		self.created  = created
		self.updated  = updated
	}
}

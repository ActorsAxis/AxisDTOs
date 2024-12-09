//
//  EventDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/26/24.
//

import Foundation

public struct EventDTO: Codable,  Sendable,
						Hashable, Identifiable {
	public let id:           UUID
	public var eventTypeID:  UUID?
	public var website:      String?
	public var dateTime:     Date?
	public var description:  String?
	public var email:        String?
	public var coverImage:   String?
	public var coordinates:  Coordinates?
	public var address:      String?
	public var phoneNumber:  String?
	public var price:        Double?
	public var refundPolicy: String?
	public var title:        String?
	public var subtitle:     String?
	public var venue:        String?
	public let created:      Date?
	public let updated:      Date?

	public init(
		id:           UUID         = UUID(),
		eventTypeID:  UUID?        = nil,
		website:      String?      = nil,
		dateTime:     Date?        = nil,
		description:  String?      = nil,
		email:        String?      = nil,
		coverImage:   String?      = nil,
		coordinates:  Coordinates? = nil,
		address:      String?      = nil,
		phoneNumber:  String?      = nil,
		price:        Double?      = nil,
		refundPolicy: String?      = nil,
		title:        String?      = nil,
		subtitle:     String?      = nil,
		venue:        String?      = nil,
		created:      Date?        = nil,
		updated:      Date?        = nil
	) {
		self.id           = id
		self.eventTypeID  = eventTypeID
		self.website      = website
		self.dateTime     = dateTime
		self.description  = description
		self.email        = email
		self.coverImage   = coverImage
		self.coordinates  = coordinates
		self.address      = address
		self.phoneNumber  = phoneNumber
		self.price        = price
		self.refundPolicy = refundPolicy
		self.title        = title
		self.subtitle     = subtitle
		self.venue        = venue
		self.created      = created
		self.updated      = updated
	}
}

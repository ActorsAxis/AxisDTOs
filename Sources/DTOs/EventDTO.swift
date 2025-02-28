//
//  EventDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/26/24.
//

import Foundation

public struct EventDTO: Codable, Hashable, Sendable,
						Identifiable {
	public let id:               UUID
	public var eventTypeID:      UUID?
	public var website:          String?
	public var dateTime:         Date?
	public var eventDescription: String?
	public var email:            String?
	public var coverImage:       String?
	public var coordinates:      Coordinates?
	public var address:          Address?
	public var phoneNumber:      String?
	public var price:            Double?
	public var refundPolicy:     String?
	public var title:            String?
	public var subtitle:         String?
	public var venue:            String?
	public var created:          Date?
	public var updated:          Date?

	public init(
		id:               UUID         = UUID(),
		eventTypeID:      UUID?        = nil,
		website:          String?      = nil,
		dateTime:         Date?        = nil,
		eventDescription: String?      = nil,
		email:            String?      = nil,
		coverImage:       String?      = nil,
		coordinates:      Coordinates? = nil,
		address:          Address?     = nil,
		phoneNumber:      String?      = nil,
		price:            Double?      = nil,
		refundPolicy:     String?      = nil,
		title:            String?      = nil,
		subtitle:         String?      = nil,
		venue:            String?      = nil,
		created:          Date?        = nil,
		updated:          Date?        = nil
	) {
		self.id               = id
		self.eventTypeID      = eventTypeID
		self.website          = website
		self.dateTime         = dateTime
		self.eventDescription = eventDescription
		self.email            = email
		self.coverImage       = coverImage
		self.coordinates      = coordinates
		self.address          = address
		self.phoneNumber      = phoneNumber
		self.price            = price
		self.refundPolicy     = refundPolicy
		self.title            = title
		self.subtitle         = subtitle
		self.venue            = venue
		self.created          = created
		self.updated          = updated
	}
}

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
	public var eventTypeID:  UUID
	public var website:      String?
	public var dateTime:     Date?
	public var description:  String?
	public var email:        String?
	public var coverImage:   String?
	public var latitude:     Double?
	public var longitude:    Double?
	public var address:      String?
	public var phoneNumber:  String?
	public var price:        Double?
	public var refundPolicy: String?
	public var title:        String?
	public var subtitle:     String?

	public init(
		id:           UUID    = UUID(),
		eventTypeID:  UUID    = UUID(),
		website:      String? = nil,
		dateTime:     Date?   = nil,
		description:  String? = nil,
		email:        String? = nil,
		coverImage:   String? = nil,
		latitude:     Double? = nil,
		longitude:    Double? = nil,
		address:      String? = nil,
		phoneNumber:  String? = nil,
		price:        Double? = nil,
		refundPolicy: String? = nil,
		title:        String? = nil,
		subtitle:     String? = nil
	) {
		self.id           = id
		self.eventTypeID  = eventTypeID
		self.website      = website
		self.dateTime     = dateTime
		self.description  = description
		self.email        = email
		self.coverImage   = coverImage
		self.latitude     = latitude
		self.longitude    = longitude
		self.address      = address
		self.phoneNumber  = phoneNumber
		self.price        = price
		self.refundPolicy = refundPolicy
		self.title        = title
		self.subtitle     = subtitle
	}
}

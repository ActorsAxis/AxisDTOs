//
//  SponsorDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/20/25.
//

import Foundation

public struct SponsorDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:                 UUID
	public var title:              String
	public var subtitle:           String?
	public var summary:            String?
	public var sponsorDescription: String?
	public var media:             [MediumDTO]?
	public var url:                String?
	public var urlTitle:           String?
	public var order:              Int?
	public let created:            Date?
	public let updated:            Date?

	public init(
		id:                 UUID        = UUID(),
		title:              String,
		subtitle:           String?     = nil,
		summary:            String?     = nil,
		sponsorDescription: String?     = nil,
		media:             [MediumDTO]? = nil,
		url:                String?     = nil,
		urlTitle:           String?     = nil,
		order:              Int?        = nil,
		created:            Date?       = nil,
		updated:            Date?       = nil
	) {
		self.id                 = id
		self.title              = title
		self.subtitle           = subtitle
		self.summary            = summary
		self.sponsorDescription = sponsorDescription
		self.media              = media
		self.url                = url
		self.urlTitle           = urlTitle
		self.order              = order
		self.created            = created
		self.updated            = updated
	}
}

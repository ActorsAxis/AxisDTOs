//
//  SponsorDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/20/25.
//

import Foundation

public struct SponsorDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:            UUID
	public var title:         String
	public var titleMediumID: UUID?
	public var titleMedium:   MediumDTO?
	public var description:   String?
	public var media:        [MediumDTO]?
	public var url:           String?
	public var order:         Int?
	public let created:       Date?
	public let updated:       Date?

	public init(
		id:            UUID        = UUID(),
		title:         String,
		titleMediumID: UUID?       = nil,
		titleMedium:   MediumDTO?  = nil,
		description:   String?     = nil,
		media:        [MediumDTO]? = nil,
		url:           String?     = nil,
		order:         Int?        = nil,
		created:       Date?       = nil,
		updated:       Date?       = nil
	) {
		self.id            = id
		self.title         = title
		self.titleMediumID = titleMediumID
		self.titleMedium   = titleMedium
		self.description   = description
		self.media         = media
		self.url           = url
		self.order         = order
		self.created       = created
		self.updated       = updated
	}
}

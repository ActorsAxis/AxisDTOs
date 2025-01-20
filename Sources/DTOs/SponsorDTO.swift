//
//  SponsorDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/20/25.
//

import Foundation

public struct SponsorDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:          UUID
	public var title:       String?
	public var titleMedia:  String?
	public var description: String?
	public var media:      [MediumDTO]?
	public var order:       Int?
	public let created:     Date?
	public let updated:     Date?

	public init(
		id:          UUID        = UUID(),
		title:       String?     = nil,
		titleMedia:  String?     = nil,
		description: String?     = nil,
		media:      [MediumDTO]? = nil,
		order:       Int?        = nil,
		created:     Date?       = nil,
		updated:     Date?       = nil
	) {
		self.id          = id
		self.title       = title
		self.titleMedia  = titleMedia
		self.description = description
		self.media       = media
		self.order       = order
		self.created     = created
		self.updated     = updated
	}
}

//
//  EventMediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/27/24.
//

import Foundation

public struct EventMediumDTO: Codable,  Sendable,
							  Hashable, Identifiable {
	public let id:                     UUID
	public var eventID:                UUID
	public var medium:                 String?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoDurationInSeconds: Int?
	public var videoThumbnail:         String?

	public init(
		id:                     UUID    = UUID(),
		eventID:                UUID    = UUID(),
		medium:                 String? = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoDurationInSeconds: Int?    = nil,
		videoThumbnail:         String? = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.medium                 = medium
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoDurationInSeconds = videoDurationInSeconds
		self.videoThumbnail         = videoThumbnail
	}
}

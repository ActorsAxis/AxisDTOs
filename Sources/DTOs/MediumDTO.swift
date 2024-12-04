//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTO: Codable,  Sendable,
						 Hashable, Identifiable {
	public let id:                     UUID
	public var eventID:                UUID?
	public var postID:                 UUID?
	public var userID:                 UUID?
	public var url:                    String
	public var order:                  Int?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoThumbnail:         String?
	public var videoDurationInSeconds: Int?
	public let created:                Date?
	public let updated:                Date?

	public init(
		id:                     UUID    = UUID(),
		eventID:                UUID?   = nil,
		postID:                 UUID?   = nil,
		userID:                 UUID?   = nil,
		url:                    String,
		order:                  Int?    = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoThumbnail:         String? = nil,
		videoDurationInSeconds: Int?    = nil,
		created:                Date?   = nil,
		updated:                Date?   = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.postID                 = postID
		self.userID                 = userID
		self.url                    = url
		self.order                  = order
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoThumbnail         = videoThumbnail
		self.videoDurationInSeconds = videoDurationInSeconds
		self.created                = created
		self.updated                = updated
	}
}

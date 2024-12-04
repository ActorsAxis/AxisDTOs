//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public typealias EventMediumDTO = MediumDTO
public typealias  UserMediumDTO = MediumDTO

public struct MediumDTO: Codable,  Sendable,
						 Hashable, Identifiable {
	public let id:                     UUID
	public var eventID:                UUID?
	public var postID:                 UUID?
	public var userID:                 UUID?
	public var order:                  Int?
	public var medium:                 String
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoThumbnail:         String?
	public var videoDurationInSeconds: Int?

	public init(
		id:                     UUID    = UUID(),
		eventID:                UUID?   = nil,
		postID:                 UUID?   = nil,
		userID:                 UUID?   = nil,
		order:                  Int?    = nil,
		medium:                 String,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoThumbnail:         String? = nil,
		videoDurationInSeconds: Int?    = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.postID                 = postID
		self.userID                 = userID
		self.order                  = order
		self.medium                 = medium
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoThumbnail         = videoThumbnail
		self.videoDurationInSeconds = videoDurationInSeconds
	}
}

//
//  UserMediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

typealias MediumDTO = UserMediumDTO

public struct UserMediumDTO: Codable,  Sendable,
							 Hashable, Identifiable {
	public let id:                     UUID
	public let userID:                 UUID
	public var medium:                 String?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoDurationInSeconds: Int?
	public var videoThumbnail:         String?

	public init(
		id:                     UUID    = UUID(),
		userID:                 UUID,
		medium:                 String? = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoDurationInSeconds: Int?    = nil,
		videoThumbnail:         String? = nil
	) {
		self.id                     = id
		self.userID                 = userID
		self.medium                 = medium
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoDurationInSeconds = videoDurationInSeconds
		self.videoThumbnail         = videoThumbnail
	}
}

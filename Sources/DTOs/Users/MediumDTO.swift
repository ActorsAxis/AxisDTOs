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
	public var medium:                 URL?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoDurationInSeconds: Int?
	public var videoThumbnail:         URL?

	public init(
		id:                     UUID = UUID(),
		medium:                 URL? = nil,
		imageWidth:             Int? = nil,
		imageHeight:            Int? = nil,
		videoDurationInSeconds: Int? = nil,
		videoThumbnail:         URL? = nil
	) {
		self.id                     = id
		self.medium                 = medium
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoDurationInSeconds = videoDurationInSeconds
		self.videoThumbnail         = videoThumbnail
	}

	public init(
		id:                     UUID    = UUID(),
		medium:                 String? = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoDurationInSeconds: Int?    = nil,
		videoThumbnail:         String? = nil
	) {
		self.init(
			id:                     id,
			medium:                 medium         != nil ? URL(string: medium!)         : nil,
			imageWidth:             imageWidth,
			imageHeight:            imageHeight,
			videoDurationInSeconds: videoDurationInSeconds,
			videoThumbnail:         videoThumbnail != nil ? URL(string: videoThumbnail!) : nil
		)
	}
}

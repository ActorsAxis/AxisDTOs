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
	public var medium:                 String?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoDurationInSeconds: Int?
	public var videoThumbnail:         String?

	public init(
		id:                     UUID    = UUID(),
		medium:                 String? = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoDurationInSeconds: Int?    = nil,
		videoThumbnail:         String? = nil
	) {
		self.id                     = id
		self.medium                 = medium
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoDurationInSeconds = videoDurationInSeconds
		self.videoThumbnail         = videoThumbnail
	}

	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}

	public static func == (lhs: MediumDTO, rhs: MediumDTO) -> Bool {
		lhs.id == rhs.id
	}
}

//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTO: Codable,  Sendable,
						 Hashable, Identifiable {
	public var id:                     UUID    = UUID()
	public var medium:                 String? = nil
	public var imageWidth:             Int?    = nil
	public var imageHeight:            Int?    = nil
	public var videoDurationInSeconds: Int?    = nil
	public var videoThumbnail:         String? = nil

#if false
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
#endif
}

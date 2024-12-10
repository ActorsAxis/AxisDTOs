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
	public var url:                    String?
	public var order:                  Int?
	public var thumbnail:              String?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var videoDurationInSeconds: Int?
	public var pickerData:             Data?
	public let created:                Date?
	public let updated:                Date?

	public init(
		id:                     UUID    = UUID(),
		eventID:                UUID?   = nil,
		postID:                 UUID?   = nil,
		userID:                 UUID?   = nil,
		url:                    String? = nil,
		order:                  Int?    = nil,
		thumbnail:              String? = nil,
		imageWidth:             Int?    = nil,
		imageHeight:            Int?    = nil,
		videoDurationInSeconds: Int?    = nil,
		pickerData:             Data?   = nil,
		created:                Date?   = nil,
		updated:                Date?   = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.postID                 = postID
		self.userID                 = userID
		self.url                    = url
		self.order                  = order
		self.thumbnail              = thumbnail
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.videoDurationInSeconds = videoDurationInSeconds
		self.pickerData             = pickerData
		self.created                = created
		self.updated                = updated
	}
}

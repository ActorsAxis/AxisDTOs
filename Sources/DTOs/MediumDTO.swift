//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTO: Codable, Hashable, Sendable,
						 Identifiable {
	public let id:                     UUID
	public var eventID:                UUID?
	public var postID:                 UUID?
	public var storyID:                UUID?
	public var userID:                 UUID?
	public var url:                    String?
	public var s3Key:                  String?
	public var order:                  Int?
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var contentType:            String?
	public var thumbnailURL:           String?
	public var videoDurationInSeconds: Int?
	public var ui:                     UserInterface?
	public let created:                Date?
	public let updated:                Date?

	public init(
		id:                     UUID           = UUID(),
		eventID:                UUID?          = nil,
		postID:                 UUID?          = nil,
		storyID:                UUID?          = nil,
		userID:                 UUID?          = nil,
		url:                    String?        = nil,
		s3Key:                  String?        = nil,
		order:                  Int?           = nil,
		imageWidth:             Int?           = nil,
		imageHeight:            Int?           = nil,
		contentType:            String?        = nil,
		thumbnailURL:           String?        = nil,
		videoDurationInSeconds: Int?           = nil,
		ui:                     UserInterface? = nil,
		created:                Date?          = nil,
		updated:                Date?          = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.postID                 = postID
		self.storyID                = storyID
		self.userID                 = userID
		self.url                    = url
		self.s3Key                  = s3Key
		self.order                  = order
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.contentType            = contentType
		self.thumbnailURL           = thumbnailURL
		self.videoDurationInSeconds = videoDurationInSeconds
		self.ui                     = ui
		self.created                = created
		self.updated                = updated
	}

	public struct UserInterface: Codable, Hashable, Sendable {
		public var pickerData:    Data?
		public var thumbnailData: Data?

		public init(
			pickerData:    Data? = nil,
			thumbnailData: Data? = nil
		) {
			self.pickerData    = pickerData
			self.thumbnailData = thumbnailData
		}
	}
}

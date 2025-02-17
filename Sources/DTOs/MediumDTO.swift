//
//  MediumDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/9/24.
//

import Foundation

public struct MediumDTO: Codable, Hashable, Sendable,
						 Identifiable {
	public let id: UUID

	public var eventID:   UUID?
	public var postID:    UUID?
	public var sponsorID: UUID?
	public var stageID:   UUID?
	public var storyID:   UUID?
	public var userID:    UUID?

	public var tag:                    String?
	public var url:                    String?
	public var order:                  Int?
	public var s3Key:                  String?
	public var width:                  Int?
	public var height:                 Int?
	public var contentType:            String?
	public var thumbnailURL:           String?
	public var videoDurationInSeconds: Int?
	public let created:                Date?
	public let updated:                Date?

	public var ui: UserInterface?

	public init(
		id: UUID = UUID(),

		eventID:   UUID? = nil,
		postID:    UUID? = nil,
		sponsorID: UUID? = nil,
		stageID:   UUID? = nil,
		storyID:   UUID? = nil,
		userID:    UUID? = nil,

		tag:                    String? = nil,
		url:                    String? = nil,
		order:                  Int?    = nil,
		s3Key:                  String? = nil,
		width:                  Int?    = nil,
		height:                 Int?    = nil,
		contentType:            String? = nil,
		thumbnailURL:           String? = nil,
		videoDurationInSeconds: Int?    = nil,
		created:                Date?   = nil,
		updated:                Date?   = nil,

		ui: UserInterface? = nil
	) {
		self.id = id

		self.eventID   = eventID
		self.postID    = postID
		self.sponsorID = sponsorID
		self.stageID   = stageID
		self.storyID   = storyID
		self.userID    = userID

		self.tag                    = tag
		self.url                    = url
		self.order                  = order
		self.s3Key                  = s3Key
		self.width                  = width
		self.height                 = height
		self.contentType            = contentType
		self.thumbnailURL           = thumbnailURL
		self.videoDurationInSeconds = videoDurationInSeconds
		self.created                = created
		self.updated                = updated

		self.ui = ui
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

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
	public var imageWidth:             Int?
	public var imageHeight:            Int?
	public var thumbnailURL:           String?
	public var videoDurationInSeconds: Int?
	public var ui:                     UserInterface?
	public let created:                Date?
	public let updated:                Date?

	public init(
		id:                     UUID           = UUID(),
		eventID:                UUID?          = nil,
		postID:                 UUID?          = nil,
		userID:                 UUID?          = nil,
		url:                    String?        = nil,
		order:                  Int?           = nil,
		imageWidth:             Int?           = nil,
		imageHeight:            Int?           = nil,
		thumbnailURL:           String?        = nil,
		videoDurationInSeconds: Int?           = nil,
		ui:                     UserInterface? = nil,
		created:                Date?          = nil,
		updated:                Date?          = nil
	) {
		self.id                     = id
		self.eventID                = eventID
		self.postID                 = postID
		self.userID                 = userID
		self.url                    = url
		self.order                  = order
		self.imageWidth             = imageWidth
		self.imageHeight            = imageHeight
		self.thumbnailURL           = thumbnailURL
		self.videoDurationInSeconds = videoDurationInSeconds
		self.ui                     = ui
		self.created                = created
		self.updated                = updated
	}

	public struct UserInterface: Codable, Sendable {
		public var pickerData: Data?
		public var thumbnailData: Data?
		
		public init(pickerData: Data? = nil, thumbnailData: Data? = nil) {
			self.pickerData = pickerData
			self.thumbnailData = thumbnailData
		}
	}}

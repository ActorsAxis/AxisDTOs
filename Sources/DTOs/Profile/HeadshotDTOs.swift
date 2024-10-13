//
//  HeadshotDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotRequestDTO: Codable, Sendable {
	public let id:               UUID?
	public let userID:           UUID
	public let headshotURL:      String?
	public let actorName:        String?
	public let actorType:        String?
	public let actorLocation:    String?
	public let actorEmail:       String?
	public let actorPhone:       String?
	public let actorWebsiteURL:  String?
	public let actorSocialMedia: String?

	public init(
		id:               UUID?   = nil,
		userID:           UUID,
		headshotURL:      String? = nil,
		actorName:        String? = nil,
		actorType:        String? = nil,
		actorLocation:    String? = nil,
		actorEmail:       String? = nil,
		actorPhone:       String? = nil,
		actorWebsiteURL:  String? = nil,
		actorSocialMedia: String? = nil
	) {
		self.id               = id
		self.userID           = userID
		self.headshotURL      = headshotURL
		self.actorName        = actorName
		self.actorType        = actorType
		self.actorLocation    = actorLocation
		self.actorEmail       = actorEmail
		self.actorPhone       = actorPhone
		self.actorWebsiteURL  = actorWebsiteURL
		self.actorSocialMedia = actorSocialMedia
	}
}

// MARK: -

public struct HeadshotResponseDTO: Codable, Sendable, Hashable, Identifiable {
	public let id:               UUID
	public let userID:           UUID
	public let headshotURL:      String?
	public let actorName:        String?
	public let actorType:        String?
	public let actorLocation:    String?
	public let actorEmail:       String?
	public let actorPhone:       String?
	public let actorWebsiteURL:  String?
	public let actorSocialMedia: String?

	public init(
		id:               UUID,
		userID:           UUID,
		headshotURL:      String? = nil,
		actorName:        String? = nil,
		actorType:        String? = nil,
		actorLocation:    String? = nil,
		actorEmail:       String? = nil,
		actorPhone:       String? = nil,
		actorWebsiteURL:  String? = nil,
		actorSocialMedia: String? = nil
	) {
		self.id               = id
		self.userID           = userID
		self.headshotURL      = headshotURL
		self.actorName        = actorName
		self.actorType        = actorType
		self.actorLocation    = actorLocation
		self.actorEmail       = actorEmail
		self.actorPhone       = actorPhone
		self.actorWebsiteURL  = actorWebsiteURL
		self.actorSocialMedia = actorSocialMedia
	}
}

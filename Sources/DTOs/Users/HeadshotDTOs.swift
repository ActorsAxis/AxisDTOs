//
//  HeadshotDTOs.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct HeadshotRequest: Codable, Sendable {
	public var id:               UUID?
	public var userID:           UUID
	public var picture:          String?
	public var actorName:        String?
	public var actorType:        String?
	public var actorLocation:    String?
	public var actorEmail:       String?
	public var actorPhone:       String?
	public var actorWebsite:     String?
	public var actorSocialMedia: String?

	public init(
		id:               UUID?   = nil,
		userID:           UUID,
		picture:          String? = nil,
		actorName:        String? = nil,
		actorType:        String? = nil,
		actorLocation:    String? = nil,
		actorEmail:       String? = nil,
		actorPhone:       String? = nil,
		actorWebsite:     String? = nil,
		actorSocialMedia: String? = nil
	) {
		self.id               = id
		self.userID           = userID
		self.picture          = picture
		self.actorName        = actorName
		self.actorType        = actorType
		self.actorLocation    = actorLocation
		self.actorEmail       = actorEmail
		self.actorPhone       = actorPhone
		self.actorWebsite     = actorWebsite
		self.actorSocialMedia = actorSocialMedia
	}

	public init(from response: HeadshotResponse) {
		self.init(
			id:               response.id,
			userID:           response.userID,
			picture:          response.picture,
			actorName:        response.actorName,
			actorType:        response.actorType,
			actorLocation:    response.actorLocation,
			actorEmail:       response.actorEmail,
			actorPhone:       response.actorPhone,
			actorWebsite:     response.actorWebsite,
			actorSocialMedia: response.actorSocialMedia
		)
	}
}

// MARK: -

public struct HeadshotResponse: Codable,  Sendable,
								Hashable, Identifiable {
	public var id:               UUID
	public var userID:           UUID
	public var picture:          String?
	public var actorName:        String?
	public var actorType:        String?
	public var actorLocation:    String?
	public var actorEmail:       String?
	public var actorPhone:       String?
	public var actorWebsite:     String?
	public var actorSocialMedia: String?

	public init(
		id:               UUID,
		userID:           UUID,
		picture:          String? = nil,
		actorName:        String? = nil,
		actorType:        String? = nil,
		actorLocation:    String? = nil,
		actorEmail:       String? = nil,
		actorPhone:       String? = nil,
		actorWebsite:     String? = nil,
		actorSocialMedia: String? = nil
	) {
		self.id               = id
		self.userID           = userID
		self.picture          = picture
		self.actorName        = actorName
		self.actorType        = actorType
		self.actorLocation    = actorLocation
		self.actorEmail       = actorEmail
		self.actorPhone       = actorPhone
		self.actorWebsite     = actorWebsite
		self.actorSocialMedia = actorSocialMedia
	}

	public mutating func copyNonOptionals(from request: HeadshotRequest) {
		if let id = request.id { self.id = id }
		userID = request.userID
		if let picture          = request.picture          { self.picture          = picture          }
		if let actorName        = request.actorName        { self.actorName        = actorName        }
		if let actorType        = request.actorType        { self.actorType        = actorType        }
		if let actorLocation    = request.actorLocation    { self.actorLocation    = actorLocation    }
		if let actorEmail       = request.actorEmail       { self.actorEmail       = actorEmail       }
		if let actorPhone       = request.actorPhone       { self.actorPhone       = actorPhone       }
		if let actorWebsite     = request.actorWebsite     { self.actorWebsite     = actorWebsite     }
		if let actorSocialMedia = request.actorSocialMedia { self.actorSocialMedia = actorSocialMedia }
	}
}

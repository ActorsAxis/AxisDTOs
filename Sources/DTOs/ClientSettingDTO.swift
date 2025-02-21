//
//  ClientSettingDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/17/25.
//

import Foundation

public struct ClientSettingDTO: Codable, Hashable, Sendable,
								Identifiable {
	public let id:                       UUID
	public var userID:                   UUID?
	public var enableSoundEffects:       Bool?
	public var rememberSignIn:           Bool?
	public var newPostNotifications:     Bool?
	public var newStageNotifications:    Bool?
	public var newStoryNotifications:    Bool?
	public var likePostNotifications:    Bool?
	public var likeStageNotifications:   Bool?
	public var likeStoryNotifications:   Bool?
	public var giftedCoinsNotifications: Bool?
	public let created:                  Date?
	public let updated:                  Date?

	public init(
		id:                       UUID  = UUID(),
		userID:                   UUID? = nil,
		enableSoundEffects:       Bool? = nil,
		rememberSignIn:           Bool? = nil,
		newPostNotifications:     Bool? = nil,
		newStageNotifications:    Bool? = nil,
		newStoryNotifications:    Bool? = nil,
		likePostNotifications:    Bool? = nil,
		likeStageNotifications:   Bool? = nil,
		likeStoryNotifications:   Bool? = nil,
		giftedCoinsNotifications: Bool? = nil,
		created:                  Date? = nil,
		updated:                  Date? = nil
	) {
		self.id                       = id
		self.userID                   = userID
		self.enableSoundEffects       = enableSoundEffects
		self.rememberSignIn           = rememberSignIn
		self.newPostNotifications     = newPostNotifications
		self.newStageNotifications    = newStageNotifications
		self.newStoryNotifications    = newStoryNotifications
		self.likePostNotifications    = likePostNotifications
		self.likeStageNotifications   = likeStageNotifications
		self.likeStoryNotifications   = likeStoryNotifications
		self.giftedCoinsNotifications = giftedCoinsNotifications
		self.created                  = created
		self.updated                  = updated
	}
}

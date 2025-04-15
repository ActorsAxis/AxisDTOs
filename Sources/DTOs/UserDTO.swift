//
//  UserDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 10/8/24.
//

import Foundation

public struct UserDTO: Codable,  Sendable,
					   Hashable, Identifiable {
	public let id: UUID

	public var accountTypeID: UUID?
	public var settingsID:    UUID?
	public var unionTypeID:   UUID?
	public var userLevelID:   UUID?
	public var userTypeID:    UUID?

	public var accountType: AccountTypeDTO?
	public var settings:    ClientSettingDTO?
	public var unionType:   UnionTypeDTO?
	public var userLevel:   UserLevelDTO?
	public var userType:    UserTypeDTO?

	public var blocking:    [UserDTO]?
	public var devices:     [DeviceDTO]?
	public var socialMedia: [SocialMediumDTO]?

	public var email:             String?
	public var password:          String?
	public var issuer:            String?
	public var subject:           String?
	public var givenName:         String?
	public var familyName:        String?
	public var name:              String?
	public var chatName:          String?
	public var picture:           String?
	public var biography:         String?
	public var resume:            String?
	public var goldCoins:         Double?
	public var purpleCoins:       Double?
	public var coinGiveawayCount: Int?
	public var liveStreamCount:   Int?
	public var postCount:         Int?
	public var stageCount:        Int?
	public var stars:             Int?
	public var followers:         Int?
	public var following:         Int?
	public var created:           Date?
	public var updated:           Date?

	public init(
		id: UUID = UUID(),

		accountTypeID: UUID? = nil,
		settingsID:    UUID? = nil,
		unionTypeID:   UUID? = nil,
		userLevelID:   UUID? = nil,
		userTypeID:    UUID? = nil,

		accountType: AccountTypeDTO?   = nil,
		settings:    ClientSettingDTO? = nil,
		unionType:   UnionTypeDTO?     = nil,
		userLevel:   UserLevelDTO?     = nil,
		userType:    UserTypeDTO?      = nil,

		blocking:    [UserDTO]?         = nil,
		devices:     [DeviceDTO]?       = nil,
		socialMedia: [SocialMediumDTO]? = nil,

		email:             String? = nil,
		password:          String? = nil,
		issuer:            String? = nil,
		subject:           String? = nil,
		givenName:         String? = nil,
		familyName:        String? = nil,
		name:              String? = nil,
		chatName:          String? = nil,
		picture:           String? = nil,
		biography:         String? = nil,
		resume:            String? = nil,
		goldCoins:         Double? = nil,
		purpleCoins:       Double? = nil,
		coinGiveawayCount: Int?    = nil,
		liveStreamCount:   Int?    = nil,
		postCount:         Int?    = nil,
		stageCount:        Int?    = nil,
		stars:             Int?    = nil,
		followers:         Int?    = nil,
		following:         Int?    = nil,
		created:           Date?   = nil,
		updated:           Date?   = nil
	) {
		self.id = id

		self.accountTypeID = accountTypeID
		self.settingsID    = settingsID
		self.unionTypeID   = unionTypeID
		self.userLevelID   = userLevelID
		self.userTypeID    = userTypeID

		self.accountType = accountType
		self.settings    = settings
		self.unionType   = unionType
		self.userLevel   = userLevel
		self.userType    = userType

		self.blocking    = blocking
		self.devices     = devices
		self.socialMedia = socialMedia

		self.email             = email
		self.password          = password
		self.issuer            = issuer
		self.subject           = subject
		self.givenName         = givenName
		self.familyName        = familyName
		self.name              = name
		self.chatName          = chatName
		self.picture           = picture
		self.biography         = biography
		self.resume            = resume
		self.goldCoins         = goldCoins
		self.purpleCoins       = purpleCoins
		self.coinGiveawayCount = coinGiveawayCount
		self.liveStreamCount   = liveStreamCount
		self.postCount         = postCount
		self.stageCount        = stageCount
		self.stars             = stars
		self.followers         = followers
		self.following         = following
		self.created           = created
		self.updated           = updated
	}
}

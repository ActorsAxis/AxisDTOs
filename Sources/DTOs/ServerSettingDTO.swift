//
//  ServerSettingDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/25/25.
//

import Foundation

public struct ServerSettingDTO: Codable, Hashable, Sendable,
								Identifiable {
	public let id:       UUID
	public var coins:    Coins?
	public var missions: Missions?
	public let created:  Data?
	public let updated:  Data?

	public init(
		id:       UUID      = UUID(),
		coins:    Coins?    = nil,
		missions: Missions? = nil,
		created:  Data?     = nil,
		updated:  Data?     = nil
	) {
		self.id       = id
		self.coins    = coins
		self.missions = missions
		self.created  = created
		self.updated  = updated
	}
}

// MARK: -

public struct Coins: Codable, Hashable, Sendable {
	public var purpleCoinsPerGoldCoin:     Int?
	public var purpleCoinMultiple:         Int?
	public var starsPerPurpleCoinMultiple: Int?

	public init(
		purpleCoinsPerGoldCoin:     Int? = nil,
		purpleCoinMultiple:         Int? = nil,
		starsPerPurpleCoinMultiple: Int? = nil
	) {
		self.purpleCoinsPerGoldCoin     = purpleCoinsPerGoldCoin
		self.purpleCoinMultiple         = purpleCoinMultiple
		self.starsPerPurpleCoinMultiple = starsPerPurpleCoinMultiple
	}
}

// MARK: -

public struct Missions: Codable, Hashable, Sendable {
	public var coinGiveawayChallenge: Int?
	public var coinGiveawayReward:    Int?
	public var liveStreamChallenge:   Int?
	public var liveStreamReward:      Int?
	public var postChallenge:         Int?
	public var postReward:            Int?
	public var stageChallenge:        Int?
	public var stageReward:           Int?

	public init(
		coinGiveawayChallenge: Int? = nil,
		coinGiveawayReward:    Int? = nil,
		liveStreamChallenge:   Int? = nil,
		liveStreamReward:      Int? = nil,
		postChallenge:         Int? = nil,
		postReward:            Int? = nil,
		stageChallenge:        Int? = nil,
		stageReward:           Int? = nil
	) {
		self.coinGiveawayChallenge = coinGiveawayChallenge
		self.coinGiveawayReward    = coinGiveawayReward
		self.liveStreamChallenge   = liveStreamChallenge
		self.liveStreamReward      = liveStreamReward
		self.postChallenge         = postChallenge
		self.postReward            = postReward
		self.stageChallenge        = stageChallenge
		self.stageReward           = stageReward
	}
}

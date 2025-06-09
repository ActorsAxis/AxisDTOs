//
//  ServerSettingDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/25/25.
//

import Foundation

public struct ServerSettingDTO: Codable,  Sendable,
								Hashable, Identifiable {
	public let id:             UUID
	public var purchaseCoins: [String: Int]?
	public var coins:          Coins?
	public var missions:       Missions?
	public var created:        Data?
	public var updated:        Data?

	public init(
		id:             UUID          = UUID(),
		purchaseCoins: [String: Int]? = nil,
		coins:          Coins?        = nil,
		missions:       Missions?     = nil,
		created:        Data?         = nil,
		updated:        Data?         = nil
	) {
		self.id            = id
		self.purchaseCoins = purchaseCoins
		self.coins         = coins
		self.missions      = missions
		self.created       = created
		self.updated       = updated
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

// MARK: -

public struct NewUser: Codable, Hashable, Sendable {
	public var goldCoins:   Int?
	public var purpleCoins: Int?

	public init(
		goldCoins:   Int? = nil,
		purpleCoins: Int? = nil
	) {
		self.goldCoins   = goldCoins
		self.purpleCoins = purpleCoins
	}
}

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
	public var missions: Missions?
	public let created:  Data?
	public let updated:  Data?

	public init(
		id:       UUID      = UUID(),
		missions: Missions? = nil,
		created:  Data?     = nil,
		updated:  Data?     = nil
	) {
		self.id       = id
		self.missions = missions
		self.created  = created
		self.updated  = updated
	}
}

// MARK: -

public struct Missions: Codable, Hashable, Sendable {
	public var coinGiveawayRequirement: Int?
	public var liveStreamRequirement:   Int?
	public var postRequirement:         Int?
	public var stageRequirement:        Int?

	public init(
		coinGiveawayRequirement: Int? = nil,
		liveStreamRequirement:   Int? = nil,
		postRequirement:         Int? = nil,
		stageRequirement:        Int? = nil
	) {
		self.coinGiveawayRequirement = coinGiveawayRequirement
		self.liveStreamRequirement   = liveStreamRequirement
		self.postRequirement         = postRequirement
		self.stageRequirement        = stageRequirement
	}
}

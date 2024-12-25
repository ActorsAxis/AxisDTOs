//
//  DeviceDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/29/24.
//

import Foundation

public struct DeviceDTO: Codable, Hashable, Sendable,
						 Identifiable {
	public let id:               UUID
	public var userID:           UUID?
	public var fcmToken:         String?
	public var identifier:       String?
	public var locale:           String?
	public var memory:           String?
	public var model:            String?
	public var name:             String?
	public var network:          String?
	public var osName:           String?
	public var osVersion:        String?
	public var screenDensity:    String?
	public var screenResolution: String?
	public var timezone:         String?
	public let created:          Date?
	public let updated:          Date?

	public init(
		id:               UUID    = UUID(),
		userID:           UUID?   = nil,
		fcmToken:         String? = nil,
		identifier:       String? = nil,
		locale:           String? = nil,
		memory:           String? = nil,
		model:            String? = nil,
		name:             String? = nil,
		network:          String? = nil,
		osName:           String? = nil,
		osVersion:        String? = nil,
		screenDensity:    String? = nil,
		screenResolution: String? = nil,
		timezone:         String? = nil,
		created:          Date?   = nil,
		updated:          Date?   = nil
	) {
		self.id               = id
		self.userID           = userID
		self.fcmToken         = fcmToken
		self.identifier       = identifier
		self.locale           = locale
		self.memory           = memory
		self.model            = model
		self.name             = name
		self.network          = network
		self.osName           = osName
		self.osVersion        = osVersion
		self.screenDensity    = screenDensity
		self.screenResolution = screenResolution
		self.timezone         = timezone
		self.created          = created
		self.updated          = updated
	}
}

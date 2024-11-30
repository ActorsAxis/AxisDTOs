//
//  DeviceDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/29/24.
//

import Foundation

public struct DeviceDTO: Codable,  Sendable,
						 Hashable, Identifiable {
	public let id:               UUID
	public var userID:           UUID
	public var deviceTypeID:     UUID
	public var carrier:          String?
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
	public var wifi:             String?

	public init(
		id:               UUID    = UUID(),
		userID:           UUID    = UUID(),
		deviceTypeID:     UUID    = UUID(),
		carrier:          String? = nil,
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
		wifi:             String? = nil
	) {
		self.id               = id
		self.userID           = userID
		self.deviceTypeID     = deviceTypeID
		self.carrier          = carrier
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
		self.wifi             = wifi
	}
}

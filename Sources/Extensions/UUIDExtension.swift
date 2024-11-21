//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt32 {
		(UInt32(uuid.3) << (3 * UInt8.bitWidth)) |
		(UInt32(uuid.2) << (2 * UInt8.bitWidth)) |
		(UInt32(uuid.1) << (1 * UInt8.bitWidth)) |
		(UInt32(uuid.0))
	}
}

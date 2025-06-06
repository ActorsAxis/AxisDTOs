//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt { low ^ high }

	public var low: UInt {
		var low: UInt = 0
		low |= UInt(uuid.0) << (uuid.0.bitWidth * 0)
		low |= UInt(uuid.1) << (uuid.1.bitWidth * 1)
		low |= UInt(uuid.2) << (uuid.2.bitWidth * 2)
		low |= UInt(uuid.3) << (uuid.3.bitWidth * 3)
		low |= UInt(uuid.4) << (uuid.4.bitWidth * 4)
		low |= UInt(uuid.5) << (uuid.5.bitWidth * 5)
		low |= UInt(uuid.6) << (uuid.6.bitWidth * 6)
		low |= UInt(uuid.7) << (uuid.7.bitWidth * 7)
		return low
	}

	public var high: UInt {
		var high: UInt = 0
		high |= UInt(uuid .8) << (uuid .8.bitWidth * 0)
		high |= UInt(uuid .9) << (uuid .9.bitWidth * 1)
		high |= UInt(uuid.10) << (uuid.10.bitWidth * 2)
		high |= UInt(uuid.11) << (uuid.11.bitWidth * 3)
		high |= UInt(uuid.12) << (uuid.12.bitWidth * 4)
		high |= UInt(uuid.13) << (uuid.13.bitWidth * 5)
		high |= UInt(uuid.14) << (uuid.14.bitWidth * 6)
		high |= UInt(uuid.15) << (uuid.15.bitWidth * 7)
		return high
	}
}

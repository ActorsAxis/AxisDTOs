#warning("This extension should be moved to the iOS app project.")

//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt32 {
		let tuple = uInt32
		return tuple.0 ^ tuple.1 ^ tuple.2 ^ tuple.3
	}

	private var uInt32: (UInt32, UInt32, UInt32, UInt32) {
		var tuple: (UInt32, UInt32, UInt32, UInt32) = (0, 0, 0, 0)

		tuple.0 |= UInt32(uuid .0) << (uuid .0.bitWidth * 0)
		tuple.0 |= UInt32(uuid .1) << (uuid .1.bitWidth * 1)
		tuple.0 |= UInt32(uuid .2) << (uuid .2.bitWidth * 2)
		tuple.0 |= UInt32(uuid .3) << (uuid .3.bitWidth * 3)

		tuple.1 |= UInt32(uuid .4) << (uuid .4.bitWidth * 0)
		tuple.1 |= UInt32(uuid .5) << (uuid .5.bitWidth * 1)
		tuple.1 |= UInt32(uuid .6) << (uuid .6.bitWidth * 2)
		tuple.1 |= UInt32(uuid .7) << (uuid .7.bitWidth * 3)

		tuple.2 |= UInt32(uuid .8) << (uuid .8.bitWidth * 0)
		tuple.2 |= UInt32(uuid .9) << (uuid .9.bitWidth * 1)
		tuple.2 |= UInt32(uuid.10) << (uuid.10.bitWidth * 2)
		tuple.2 |= UInt32(uuid.11) << (uuid.11.bitWidth * 3)

		tuple.3 |= UInt32(uuid.12) << (uuid.12.bitWidth * 0)
		tuple.3 |= UInt32(uuid.13) << (uuid.13.bitWidth * 1)
		tuple.3 |= UInt32(uuid.14) << (uuid.14.bitWidth * 2)
		tuple.3 |= UInt32(uuid.15) << (uuid.15.bitWidth * 3)

		return tuple
	}
}

//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation
import zlib

extension UUID {
	public var uniqueID: UInt32 {
		// Convert the UUID to Data (128 bits / 16 bytes).
		let data = withUnsafeBytes(of: uuid) { Data($0) }

		// Compute the CRC32 hash.
		let crc = data.withUnsafeBytes { buffer -> UInt in
			crc32(
				0,
				buffer.baseAddress!.assumingMemoryBound(to: UInt8.self),
				UInt32(buffer.count)
			)
		}

		// Convert the UInt returned by crc32 to UInt32.
		return UInt32(truncatingIfNeeded: crc)
	}
}

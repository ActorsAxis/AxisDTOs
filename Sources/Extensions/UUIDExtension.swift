//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt {
#if true
		UInt(bitPattern: hashValue) & UInt(UInt32.max)
#else
		withUnsafeBytes(of: uuid) { buffer in
			crc32(
				0,
				buffer.bindMemory(to: UInt8.self).baseAddress,
				UInt32(buffer.count)
			)
		}
#endif
	}
}

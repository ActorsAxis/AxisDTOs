//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation
import zlib

extension UUID {
	public var uniqueID: UInt {
		withUnsafeBytes(of: uuid) { buffer in
			crc32(
				0,
				buffer.bindMemory(to: UInt8.self).baseAddress,
				UInt32(buffer.count)
			)
		}
	}
}

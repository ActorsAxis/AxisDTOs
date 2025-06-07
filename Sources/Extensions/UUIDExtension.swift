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
		binaryUnsignedIntegerUniqueID()
	}

	private func binaryUnsignedIntegerUniqueID<Result: BinaryInteger & UnsignedInteger>() -> Result {
		var bytes = uuid
		return withUnsafeBytes(of: &bytes) { bytes in
			var result: Result = .zero
			let parts = bytes.bindMemory(to: Result.self)
			for part in parts {
				result ^= part
			}
			return result
		}
	}
}

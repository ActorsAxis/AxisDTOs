//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt32 {
		unsignedIntegerUniqueID()
	}

	private func unsignedIntegerUniqueID<T: UnsignedInteger>() -> T {
		precondition(
			MemoryLayout<Self>.stride.isMultiple(of: MemoryLayout<T>.stride),
			"The result type must evenly divide into \(MemoryLayout<Self>.stride) bytes."
		)

		return withUnsafeBytes(of: self) { bytes in
			bytes
				.bindMemory(to: T.self)
				.reduce(T.zero, ^)
		}
	}
}

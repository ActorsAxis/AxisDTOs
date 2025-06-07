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

	private func binaryUnsignedIntegerUniqueID<T: BinaryInteger & UnsignedInteger>() -> T {
		precondition(
			MemoryLayout<Self>.stride.isMultiple(of: MemoryLayout<T>.stride),
			"The result type must evenly divide into \(MemoryLayout<Self>.stride) bits."
		)

		return withUnsafeBytes(of: self) { bytes in
			bytes
				.bindMemory(to: T.self)
				.reduce(T.zero, ^)
		}
	}
}

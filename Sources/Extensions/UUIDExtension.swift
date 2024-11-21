//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt32 {
		let size   = MemoryLayout<UInt32>.size
		let data   = withUnsafeBytes(of: uuid) { Data($0) }
		let prefix = data.prefix(size).withUnsafeBytes { $0.load(as: UInt32.self) }
		let suffix = data.suffix(size).withUnsafeBytes { $0.load(as: UInt32.self) }
		// XOR the prefix and the suffix for better entropy distribution.
		return prefix ^ suffix
	}
}

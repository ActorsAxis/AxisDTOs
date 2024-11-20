//
//  UUIDExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/10/24.
//

import Foundation

extension UUID {
	public var uniqueID: UInt {
		UInt(abs(hashValue))
	}
}

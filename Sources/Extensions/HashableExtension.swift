//
//  HashableExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/26/24.
//

import Foundation

extension Hashable where Self: Identifiable, ID == UUID {
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}

	public static func == (lhs: Self, rhs: Self) -> Bool {
		lhs.id == rhs.id
	}
}

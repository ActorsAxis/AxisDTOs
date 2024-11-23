//
//  OrderedSetExtension.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 11/23/24.
//

import Collections
import Foundation

extension OrderedSet {
	public mutating func move(
		fromOffsets source:      IndexSet,
		toOffset    destination: Int
	) {
		let reversedElements = source
			.reversed()
			.map { index in
				remove(at: index)
			}

		reversedElements
			.reversed()
			.enumerated()
			.forEach { offset, element in
				insert(element, at: destination + offset)
			}
	}

	public mutating func remove(atOffsets indices: IndexSet) {
		indices
			.reversed()
			.forEach { index in
				remove(at: index)
			}
	}
}

//
//  CommentDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 4/1/25.
//

import Foundation

public struct CommentDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:        UUID
	public var parentID:  UUID?
	public var postID:    UUID?
	public var comment:   String
	public var imageURL:  String?
	public var level:     Int
	public var children: [CommentDTO]
	public var created:   Date?
	public var updated:   Date?

	public init(
		id:        UUID        = UUID(),
		parentID:  UUID?       = nil,
		postID:    UUID?       = nil,
		comment:   String      = "",
		imageURL:  String?     = nil,
		level:     Int         = 0,
		children: [CommentDTO] = [],
		created:   Date?       = nil,
		updated:   Date?       = nil
	) {
		self.id       = id
		self.parentID = parentID
		self.postID   = postID
		self.comment  = comment
		self.imageURL = imageURL
		self.level    = level
		self.children = children
		self.created  = created
		self.updated  = updated
	}
}

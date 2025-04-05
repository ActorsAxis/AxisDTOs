//
//  SponsorDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/20/25.
//

import Foundation

public struct SponsorDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:              UUID
	public var title:           String
	public var subtitle:        String?
	public var summary:         String?
	public var description:     String?
	public var couponCode:      String?
	public var discountAmount:  Double?
	public var discountPercent: Double?
	public var media:          [MediumDTO]?
	public var url:             String?
	public var urlTitle:        String?
	public var order:           Int?
	public var created:         Date?
	public var updated:         Date?

	public init(
		id:              UUID        = UUID(),
		title:           String,
		subtitle:        String?     = nil,
		summary:         String?     = nil,
		description:     String?     = nil,
		couponCode:      String?     = nil,
		discountAmount:  Double?     = nil,
		discountPercent: Double?     = nil,
		media:          [MediumDTO]? = nil,
		url:             String?     = nil,
		urlTitle:        String?     = nil,
		order:           Int?        = nil,
		created:         Date?       = nil,
		updated:         Date?       = nil
	) {
		self.id              = id
		self.title           = title
		self.subtitle        = subtitle
		self.summary         = summary
		self.description     = description
		self.couponCode      = couponCode
		self.discountAmount  = discountAmount
		self.discountPercent = discountPercent
		self.media           = media
		self.url             = url
		self.urlTitle        = urlTitle
		self.order           = order
		self.created         = created
		self.updated         = updated
	}

	private enum CodingKeys: String, CodingKey {
		case id
		case title
		case subtitle
		case summary
		case description = "sponsorDescription" // For Compatibility
		case couponCode
		case discountAmount
		case discountPercent
		case media
		case url
		case urlTitle
		case order
		case created
		case updated
	}
}

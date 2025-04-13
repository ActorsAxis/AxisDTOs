//
//  SponsorDTO.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 1/20/25.
//

import Foundation

public struct SponsorDTO: Codable, Hashable, Sendable,
						  Identifiable {
	public let id:               UUID
	public var title:            String
	public var subtitle:         String?
	public var summary:          String?
	public var description:      String?
	public var couponCode:       String?
	public var discountAmount:   Double?
	public var discountPercent:  Double?
	public var couponsAvailable: Int
	public var couponsToRedeem:  Int
	public var couponUsageCount: Int?
	public var media:           [MediumDTO]?
	public var url:              String?
	public var urlTitle:         String?
	public var glowing:          Bool?
	public var order:            Int?
	public var created:          Date?
	public var updated:          Date?

	public init(
		id:               UUID        = UUID(),
		title:            String,
		subtitle:         String?     = nil,
		summary:          String?     = nil,
		description:      String?     = nil,
		couponCode:       String?     = nil,
		discountAmount:   Double?     = nil,
		discountPercent:  Double?     = nil,
		couponsAvailable: Int         = 0,
		couponsToRedeem:  Int         = 0,
		couponUsageCount: Int?        = nil,
		media:           [MediumDTO]? = nil,
		url:              String?     = nil,
		urlTitle:         String?     = nil,
		glowing:          Bool?       = nil,
		order:            Int?        = nil,
		created:          Date?       = nil,
		updated:          Date?       = nil
	) {
		self.id               = id
		self.title            = title
		self.subtitle         = subtitle
		self.summary          = summary
		self.description      = description
		self.couponCode       = couponCode
		self.discountAmount   = discountAmount
		self.discountPercent  = discountPercent
		self.couponsAvailable = couponsAvailable
		self.couponsToRedeem  = couponsToRedeem
		self.couponUsageCount = couponUsageCount
		self.media            = media
		self.url              = url
		self.urlTitle         = urlTitle
		self.glowing          = glowing
		self.order            = order
		self.created          = created
		self.updated          = updated
	}

	private enum CodingKeys: String, CodingKey {
		case id
		case title
		case subtitle
		case summary
		case description = "sponsorDescription" // For JSON Compatibility
		case couponCode
		case discountAmount
		case discountPercent
		case couponsAvailable
		case couponsToRedeem
		case couponUsageCount
		case media
		case url
		case urlTitle
		case glowing
		case order
		case created
		case updated
	}
}

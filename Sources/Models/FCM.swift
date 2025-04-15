//
//  FCM.swift
//  AxisDTOs
//
//  Created by William J. C. Nesbitt on 2/11/25.
//

import Foundation

public enum FCM {
	public enum Messages {
		public struct Payload: Codable, Sendable {
			public var message: Message

			public init(message: Message) {
				self.message = message
			}
		}

		public struct Message: Codable, Sendable {
			public var token:        String
			public var notification: Notification?
			public var data:        [String: String]?
			public var apns:         Apple.APNS?

			public init(
				token:        String,
				notification: Notification?    = nil,
				data:        [String: String]? = nil,
				apns:         Apple.APNS?      = nil
			) {
				self.token        = token
				self.notification = notification
				self.data         = data
				self.apns         = apns
			}
		}
	}

	public enum Topics {
		public struct Payload: Codable, Sendable {
			public var message: Message

			public init(message: Message) {
				self.message = message
			}
		}

		public struct Message: Codable, Sendable {
			public var topic:        String
			public var notification: Notification
			public var data:        [String: String]?
			public var apns:         Apple.APNS?

			public init(
				topic:        String,
				notification: Notification,
				data:        [String: String]? = nil,
				apns:         Apple.APNS?      = nil
			) {
				self.topic        = topic
				self.notification = notification
				self.data         = data
				self.apns         = apns
			}
		}
	}

	public struct Notification: Codable, Sendable {
		public var title: String
		public var body:  String

		public init(
			title: String,
			body:  String
		) {
			self.title = title
			self.body  = body
		}
	}

	public enum Apple {
		public struct APNS: Codable, Sendable {
			public var headers: Headers?
			public var payload: Payload

			public init(
				headers: Headers? = nil,
				payload: Payload
			) {
				self.headers = headers
				self.payload = payload
			}
		}

		public struct Headers: Codable, Sendable {
			public var priority: String
			public var pushType: String
			public var topic:    String?

			public init(
				priority: Int,
				pushType: PushType,
				topic:    String? = nil
			) {
				self.priority = String(priority)
				self.pushType = pushType.rawValue
				self.topic    = topic
			}

			public enum PushType: String, Codable, Sendable {
				case alert
				case background
				case complication
				case fileProvider
				case liveActivity
				case mdm
				case voip

				private enum CodingKeys: String, CodingKey {
					case alert
					case background
					case complication
					case fileProvider = "fileprovider"
					case liveActivity = "liveactivity"
					case mdm
					case voip
				}
			}

			private enum CodingKeys: String, CodingKey {
				case priority = "apns_priority"
				case pushType = "apns_push_type"
				case topic    = "apns_topic"
			}
		}

		public struct Payload: Codable, Sendable {
			public var aps: APS?

			public init(aps: APS? = nil) {
				self.aps = aps
			}
		}

		public struct APS: Codable, Sendable {
			public var alert:            Alert?
			public var badge:            Int?
			public var sound:            Sound?
			public var contentAvailable: Int?

			public init(
				alert:            Alert? = nil,
				badge:            Int?   = nil,
				sound:            Sound? = nil,
				contentAvailable: Int?   = nil
			) {
				self.alert            = alert
				self.badge            = badge
				self.sound            = sound
				self.contentAvailable = contentAvailable
			}

			private enum CodingKeys: String, CodingKey {
				case alert
				case badge
				case sound
				case contentAvailable = "content-available"
			}
		}

		public struct Alert: Codable, Sendable {
			public var title:    String
			public var subtitle: String?
			public var body:     String

			public init(
				title:    String,
				subtitle: String? = nil,
				body:     String
			) {
				self.title    = title
				self.subtitle = subtitle
				self.body     = body
			}
		}

		public struct Sound: Codable, Sendable {
			public var name:     String
			public var volume:   Double?
			public var critical: Int?

			public init(
				name:     String,
				volume:   Double? = nil,
				critical: Int?    = nil
			) {
				self.name     = name
				self.volume   = volume
				self.critical = critical
			}
		}
	}
}

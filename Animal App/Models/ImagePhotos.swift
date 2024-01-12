//
//  ImagePhotos.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct ImagePhotos: Codable {

  enum CodingKeys: String, CodingKey {
    case alt
    case id
    case liked
    case height
    case photographer
    case avgColor = "avg_color"
    case photographerUrl = "photographer_url"
    case photographerId = "photographer_id"
    case url
    case src
    case width
  }

  var alt: String?
  var id: Int?
  var liked: Bool?
  var height: Int?
  var photographer: String?
  var avgColor: String?
  var photographerUrl: String?
  var photographerId: Int?
  var url: String?
  var src: ImageSrc?
  var width: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    alt = try container.decodeIfPresent(String.self, forKey: .alt)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    liked = try container.decodeIfPresent(Bool.self, forKey: .liked)
    height = try container.decodeIfPresent(Int.self, forKey: .height)
    photographer = try container.decodeIfPresent(String.self, forKey: .photographer)
    avgColor = try container.decodeIfPresent(String.self, forKey: .avgColor)
    photographerUrl = try container.decodeIfPresent(String.self, forKey: .photographerUrl)
    photographerId = try container.decodeIfPresent(Int.self, forKey: .photographerId)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    src = try container.decodeIfPresent(ImageSrc.self, forKey: .src)
    width = try container.decodeIfPresent(Int.self, forKey: .width)
  }

}

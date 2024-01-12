//
//  ImageBaseModel.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct ImageBaseModel: Codable {

  enum CodingKeys: String, CodingKey {
    case totalResults = "total_results"
    case perPage = "per_page"
    case photos
    case nextPage = "next_page"
    case page
  }

  var totalResults: Int?
  var perPage: Int?
  var photos: [ImagePhotos]?
  var nextPage: String?
  var page: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    totalResults = try container.decodeIfPresent(Int.self, forKey: .totalResults)
    perPage = try container.decodeIfPresent(Int.self, forKey: .perPage)
    photos = try container.decodeIfPresent([ImagePhotos].self, forKey: .photos)
    nextPage = try container.decodeIfPresent(String.self, forKey: .nextPage)
    page = try container.decodeIfPresent(Int.self, forKey: .page)
  }

}

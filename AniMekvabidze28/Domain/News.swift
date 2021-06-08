//
//  News.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import Foundation

struct News: Codable {
    let author: String?
    let pictureUrl: String?
    let description: String?
    let publishDate: String?
    
    enum CodingKeys: String, CodingKey {
        case author, description
        case pictureUrl = "urlToImage"
        case publishDate = "publishedAt"
    }
}

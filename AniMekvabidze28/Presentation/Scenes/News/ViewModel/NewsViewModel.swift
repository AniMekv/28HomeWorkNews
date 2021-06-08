//
//  NewsViewModel.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import Foundation

struct NewsViewModel {
    
    private var news: News
    
    init(news: News) {
        self.news = news
    }
    
    var author: String {
        news.author ?? ""
    }
    
    var description: String {
        news.description ?? ""
    }
    
    var pictureUrl: URL? {
        URL(string: news.pictureUrl ?? "")
    }
    
    var publishDate: String {
        news.publishDate ?? ""
    }

}

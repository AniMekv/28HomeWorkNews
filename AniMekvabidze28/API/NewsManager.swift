//
//  NewsManager.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import Foundation

protocol NewsManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping (([News]) -> Void))
}

class NewsManager: NewsManagerProtocol {

    func fetchNews(completion: @escaping (([News]) -> Void)) {
     let url = "https://newsapi.org/v2/everything?q=tesla&from=2021-05-08&sortBy=publishedAt&apiKey=fecb1f66129b40aa9ef87240cb38407e"
            
//            "https://imedinews.ge/ge/~/api/getnews/get?skipCount=8&portion=120&categoryId=4&pageId=19"
        NetworkManager.shared.get(url: url) { (result: Result<NewsResponse, Error>) in
            switch result {
            case .success(let response):
                completion(response.articles)
            case .failure(let error):
                print(error)
            }
        }
    }
}

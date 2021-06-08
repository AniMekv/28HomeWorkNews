//
//  NewsViewModel.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import UIKit

protocol NewsListViewModelProtocol: AnyObject {
    func fetchNewses(completion: @escaping (([NewsViewModel]) -> Void))
    
    init(with newsManager: NewsManagerProtocol)
}

final class NewsListViewModel: NewsListViewModelProtocol {
    
    private var newsManager: NewsManagerProtocol
    private var navigationController: UINavigationController?
    
    init(with newsManager: NewsManagerProtocol) {
        self.newsManager = newsManager
    }
    
    func fetchNewses(completion: @escaping (([NewsViewModel]) -> Void)) {
        newsManager.fetchNews { newsList in
            completion(newsList.map { NewsViewModel(news: $0) })
        }
    }
    
}

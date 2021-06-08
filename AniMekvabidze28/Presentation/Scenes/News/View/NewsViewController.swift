//
//  ViewController.swift
//  AniMekvabidze28
//
//  Created by Mac User on 6/8/21.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var newsManager: NewsManagerProtocol!
    private var viewModel: NewsListViewModelProtocol!
    private var dataSource: NewsDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        configureViewModel()
    }
    
    private func setupLayout() {
        tableView.registerNib(class: NewsCell.self)
    }

    private func configureViewModel() {
        newsManager = NewsManager()
        viewModel = NewsListViewModel(with: newsManager)
                                      
        dataSource = NewsDataSource(with: tableView,
                                    viewModel: viewModel)
        
        dataSource.refresh()
    }
    

}




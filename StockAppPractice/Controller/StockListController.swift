//
//  StockListController.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit
import Pure

class StockListController: BaseViewConroller, FactoryModule{
    
    struct Dependency {
        let viewModel: StockListViewModel
    }
    
    required init(dependency: Dependency, payload: ()) {
        viewModel = dependency.viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        
    }
    
    
    
    let selfView = StockListView()
    let viewModel: StockListViewModel
    
    override func configureUI() {
        view.addSubview(selfView)
        
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
     
        
        selfView.searchViewController.delegate = self
        selfView.searchViewController.searchResultsUpdater = self
        navigationItem.searchController = selfView.searchViewController
    }
    
    func bind(){
        viewModel.$errorMessage.sink{ errorMessage in
            guard let message = errorMessage, !message.isEmpty else { return }
                print("message: \(message)")
        }.store(in: &subscriber)
        
        
            viewModel.$stocks.sink{ stocks in
                    print("stocks: \(stocks)")
            }.store(in: &subscriber)
        
            viewModel.$loading.sink{ loading in
                    print("loading: \(loading)")
            }.store(in: &subscriber)
        }
    
    
}

extension StockListController:UISearchControllerDelegate{
    
}
extension StockListController:UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}

//
//  StockDetailController.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/13.
//

import UIKit
import Pure

class StockDetailController: BaseViewConroller, FactoryModule{
    
    struct Dependency {
        let stock: Stock
        let viewModel: StockDetailViewModel
    }
    
    let selfView = StockDetailView()
    let viewModel: StockDetailViewModel
    
    let stock: Stock
    
    required init(dependency: Dependency, payload: ()) {
        stock = dependency.stock
        viewModel = dependency.viewModel
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        enableScrollWhenKeuboardAppeared(scrollView: selfView.scrollView)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeListeners()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad(symbol: stock.symbol ?? "", stock: stock)
        bind()
    }
    
    override func configureUI() {
        view.backgroundColor = .systemBackground
        title = "Detail"
        
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

    }
    
    func bind(){
        
        viewModel.$timeSeriseMonthlyAdjusted.sink { timeSeriseMonthlyAdjusted in
            guard let timeSeriseMonthlyAdjusted = timeSeriseMonthlyAdjusted else {return}
            print("timeSeriseMonthlyAdjusted: \(timeSeriseMonthlyAdjusted)")
        }.store(in: &subscriber)
        
        viewModel.$stock.sink { stock in
            guard let stock = stock else { return }
            self.selfView.topView.configureUI(stock: stock)
        }.store(in: &subscriber)
        
        viewModel.$errorMessage.sink { errorMessage in
            guard let errorMessage = errorMessage else {return}
            print("errorMessage:  \(errorMessage)")
        }.store(in: &subscriber)
        
        viewModel.$loading.sink { loading in
            self.selfView.loadingView.isHidden = !loading
        }.store(in: &subscriber)
    }
}

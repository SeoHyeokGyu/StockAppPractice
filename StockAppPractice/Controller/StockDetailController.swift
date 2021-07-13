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
    }
    
    let stock: Stock
    
    required init(dependency: Dependency, payload: ()) {
        stock = dependency.stock
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        view.backgroundColor = .systemBackground
        title = "Detail"
    }
    
    
}

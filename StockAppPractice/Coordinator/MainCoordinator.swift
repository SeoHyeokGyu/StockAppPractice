//
//  MainController.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit
import Pure

class MainCoordinator: Coordinator, FactoryModule {
    
    struct Dependency {
        let stockListControllerFactory: () -> StockListController
    }
    
    var navigationController: UINavigationController?
    
    let rootViewController: StockListController
    
    required init(dependency: Dependency, payload: ()) {
        rootViewController = dependency.stockListControllerFactory()
    }

    
    
    func start() {
        navigationController?.setViewControllers([rootViewController], animated: false)
    }
    
    
}

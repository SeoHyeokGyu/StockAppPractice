//
//  MainController.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func start() {
        let rootViewController = StockListController()
        navigationController?.setViewControllers([rootViewController], animated: false)
    }
    
    
}

//
//  Coordinator.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit

class Coordinator{
    func start(window:UIWindow, rootViewController:UIViewController){
            let rootViewController = UINavigationController(rootViewController: rootViewController)
            window.rootViewController = rootViewController
            window.makeKeyAndVisible()
        
    }
}

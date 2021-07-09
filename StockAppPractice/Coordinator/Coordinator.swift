//
//  Coordinator.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit

protocol Coordinator {
    var navigationController:UINavigationController? {get set}
    func start() 
}

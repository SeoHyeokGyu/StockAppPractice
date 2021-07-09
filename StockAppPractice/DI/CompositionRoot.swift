//
//  CompositionRoot.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency{
    static func resolve() -> AppDependency{
        let mainCoordinator: MainCoordinator = .init()
        
        return .init(mainCoordinator: mainCoordinator)
    }
}

//
//  CompositionRoot.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

struct AppDependency {
    let coordinator: Coordinator
}

extension AppDependency{
    static func resolve() -> AppDependency{
        let coordinator: Coordinator = .init()
        
        return .init(coordinator: coordinator)
    }
}

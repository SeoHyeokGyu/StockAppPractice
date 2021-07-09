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
            
            let stockRepository: StockRepository = SrockRepositoryImpl()
            
            let stockListControllerFactory: () -> StockListController = {
                let usecase = StockUseCase(stockRepository: stockRepository)
                let viewModel = StockListViewModel(usecase: usecase)
                return .init(dependency: .init(viewModel: viewModel))
            }
            
        let mainCoordinator: MainCoordinator = .init(dependency: .init(stockListControllerFactory: stockListControllerFactory))
        
        return .init(mainCoordinator: mainCoordinator)
    }
}

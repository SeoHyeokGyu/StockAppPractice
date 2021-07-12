//
//  StockListViewModel.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/09.
//

import RxSwift
import Combine

class StockListViewModel{

    @Published var stocks: [Stock] = []
    @Published var errorMessage: String?
    @Published var loading = false
    
    var subscriber: Set<AnyCancellable> = .init()
    let usecase: StockUseCase
    
    init(usecase: StockUseCase) {
        self.usecase = usecase
    }
    
    
}

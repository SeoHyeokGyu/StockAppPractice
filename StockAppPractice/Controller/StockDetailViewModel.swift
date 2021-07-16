//
//  StockDetailViewModel.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/15.
//

import Combine

class StockDetailViewModel: BaseViewModel {
    
    @Published var loading = false
    @Published var errorMessage: String?
    @Published var timeSeriseMonthlyAdjusted: TimeSeriesMonthlyAdjusted?
    @Published var stock: Stock?
    
    let usecase: StockDetailUseCase
    
    func viewDidLoad(symbol: String, stock: Stock) {
        self.stock = stock
        loading = true
        usecase.fetchTimeSeriesPublisher(keywords: symbol).sink { completion in
            self.loading = false
            switch completion {
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            case .finished: break
            }
        } receiveValue: { value in
            var timeSeriseMonthlyAdjusted = value
            timeSeriseMonthlyAdjusted.generateMonthInfos()
            self.timeSeriseMonthlyAdjusted = timeSeriseMonthlyAdjusted
        }.store(in: &subscriber)
    }
    
    init(usecase: StockDetailUseCase){
        self.usecase = usecase
        super.init()
    }
    

}

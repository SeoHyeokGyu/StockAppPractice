//
//  StockDetailUseCase.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/15.
//

import Combine

class StockDetailUseCase {
    
    func fetchTimeSeriesPublisher(keywords: String) -> AnyPublisher<TimeSeriesMonthlyAdjusted, Error> {
        return stockRepository.fetchTimeSeriesPublisher(keywords: keywords)
    }
    
    private let stockRepository: StockRepository
    
    init(stockRepository: StockRepository) {
        self.stockRepository = stockRepository
    }
}

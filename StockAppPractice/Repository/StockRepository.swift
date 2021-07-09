//
//  StockRepository.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/09.
//

import Combine

protocol StockRepository {
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>
}


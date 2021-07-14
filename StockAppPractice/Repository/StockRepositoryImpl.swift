//
//  StockRepositoryImpl.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/09.
//
import Foundation
import Combine

class SrockRepositoryImpl:StockRepository{
    
    enum StockRepositoryError: Error {
        case encoding
        case bad_url
    }
    
    let decoder = JSONDecoder()
    var apiKey: String = "6VWET1UP1DJVXFCH"
    
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>{
        guard let keywords = keywords.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {
            let error: StockRepositoryError = .encoding
            return Fail(error: error).eraseToAnyPublisher()
        }
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            let error: StockRepositoryError = .bad_url
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }.decode(type: StockResult.self, decoder: decoder).receive(on: RunLoop.main).eraseToAnyPublisher()
        
    }

}

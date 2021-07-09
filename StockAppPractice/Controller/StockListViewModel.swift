//
//  StockListViewModel.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/09.
//

import RxSwift
import Combine

class StockListViewModel{

    var loading: BehaviorSubject<Bool> = .init(value: false)
    var errorMessage: BehaviorSubject<String?> = .init(value: nil)
    var stocks: BehaviorSubject<[Stock]> = .init(value: [])
    var subscriber: Set<AnyCancellable> = .init()
    
    let usecase: StockUseCase
    
    init(usecase: StockUseCase) {
        self.usecase = usecase
    }
    
    func viewDidLoad(){
        loading.onNext(true)
        usecase.fetchStocksPublisher(keywords: "AMZ").sink{ completion in
            self.loading.onNext(false)
            switch completion{
            case .failure(let error):
                self.errorMessage.onNext(error.localizedDescription)
            case .finished: break
            }
        }receiveValue: { StockResult in
            self.loading.onNext(false)
            self.stocks.onNext(StockResult.items)
        }.store(in: &subscriber)
    }
    
    
}

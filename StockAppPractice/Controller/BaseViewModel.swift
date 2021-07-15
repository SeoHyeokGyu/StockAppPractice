//
//  BaseViewModel.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/15.
//

import Combine

class BaseViewModel {
    var subscriber: Set<AnyCancellable> = .init()
    
    init(){
        subscriber = .init()
    }
}

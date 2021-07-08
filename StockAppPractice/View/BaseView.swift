//
//  BaseView.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//

import UIKit

class BaseView:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI()  {
        backgroundColor = .systemBackground
    }
}

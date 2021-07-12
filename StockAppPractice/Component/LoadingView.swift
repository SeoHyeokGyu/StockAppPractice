//
//  LoadingView.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/12.
//

import UIKit

class LoadingView: UIView {
    
    let spinner = UIActivityIndicatorView(style: .large)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(spinner)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        spinner.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        spinner.startAnimating()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemeneted")
    }
}

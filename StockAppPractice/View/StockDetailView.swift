//
//  StockDetailView.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/13.
//

import UIKit

class StockDetailView: BaseView{
    let scrollView = UIScrollView()
    let titleLabel = TitleLabel()
    let subTitleLabel = NormalGrayLabel()
    let currentValueTextLabel = SmallLabel()
    let currentValueValueLabel = TitleLabel()
    let investmentLabel = SmallLabel()
    let investmentValueLabel = SmallBoldLabel()
    let gainLabel = SmallLabel()
    let gainValueLabel = SmallBoldLabel()
    let annualReturnLabel = SmallLabel()
    let annualReturnValueLabel = SmallBoldLabel()
    
    override func configureUI() {
        
        titleLabel.text = "SPY"
        subTitleLabel.text = "SDSDSD"
        currentValueValueLabel.text = "current value"
        currentValueTextLabel.text = "current text"
        investmentLabel.text = "investmane "
        investmentValueLabel.text = "investment value"
        gainLabel.text = "gain"
        gainValueLabel.text = "gain value"
        annualReturnLabel.text = "annual"
        annualReturnValueLabel.text = "annual value"
        
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 16).isActive = true

        addSubview(subTitleLabel)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 10).isActive = true
        subTitleLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
        addSubview(currentValueTextLabel)
        currentValueTextLabel.translatesAutoresizingMaskIntoConstraints = false
        currentValueTextLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        currentValueTextLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        
        addSubview(currentValueValueLabel)
        currentValueValueLabel.translatesAutoresizingMaskIntoConstraints = false
        currentValueValueLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        currentValueValueLabel.topAnchor.constraint(equalTo: currentValueTextLabel.bottomAnchor, constant: 10).isActive = true
        
        addSubview(investmentLabel)
        investmentLabel.translatesAutoresizingMaskIntoConstraints = false
        investmentLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        investmentLabel.topAnchor.constraint(equalTo: currentValueValueLabel.bottomAnchor, constant: 10).isActive = true
        
        addSubview(investmentValueLabel)
        investmentValueLabel.translatesAutoresizingMaskIntoConstraints = false
        investmentValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        investmentValueLabel.centerYAnchor.constraint(equalTo: investmentLabel.centerYAnchor).isActive = true
        
        addSubview(gainLabel)
        gainLabel.translatesAutoresizingMaskIntoConstraints = false
        gainLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        gainLabel.topAnchor.constraint(equalTo: investmentValueLabel.bottomAnchor, constant: 10).isActive = true
        
        addSubview(gainValueLabel)
        gainValueLabel.translatesAutoresizingMaskIntoConstraints = false
        gainValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        gainValueLabel.centerYAnchor.constraint(equalTo: gainLabel.centerYAnchor).isActive = true
        
        addSubview(annualReturnLabel)
        annualReturnLabel.translatesAutoresizingMaskIntoConstraints = false
        annualReturnLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        annualReturnLabel.topAnchor.constraint(equalTo: gainValueLabel.bottomAnchor, constant: 10).isActive = true
        
        addSubview(annualReturnValueLabel)
        annualReturnValueLabel.translatesAutoresizingMaskIntoConstraints = false
        annualReturnValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        annualReturnValueLabel.centerYAnchor.constraint(equalTo: annualReturnLabel.centerYAnchor).isActive = true
        
        
    }
}

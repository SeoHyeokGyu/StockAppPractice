//
//  StockCell.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/12.
//

import UIKit

class StockCell: UITableViewCell {
    
    static let identifier = "StockCellIdentifier"
    
    let symbolLabel = TitleLabel()
    let descriptionLabel = NormalGrayLabel()
    let compantNameLabel = NormalLabel()
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            alpha = 0.6
        } else {
            alpha = 1
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(symbolLabel)
        symbolLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(compantNameLabel)
        compantNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        symbolLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        symbolLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor, constant: 12).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: symbolLabel.leftAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        
        compantNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        compantNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        compantNameLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI(item: Stock){
        symbolLabel.text = item.symbol
        descriptionLabel.text = "\(item.type ?? "") \(item.currency ?? "" )"
        compantNameLabel.text = item.name
    }
    
    
}

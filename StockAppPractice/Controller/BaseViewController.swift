//
//  BaseViewContoller.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//
// 코드의 중복을 방지하기 위함
import UIKit

class BaseViewConroller: UIViewController{
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
    }
    
}

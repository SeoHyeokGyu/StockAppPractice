//
//  BaseViewContoller.swift
//  StockAppPractice
//
//  Created by 서혁규 on 2021/07/08.
//
// 코드의 중복을 방지하기 위함
import UIKit
import RxSwift
import Combine

class BaseViewConroller: UIViewController{
    
    let disposeBag = DisposeBag()
    var subscriber: Set<AnyCancellable> = .init()
    private var scrollVIew: UIScrollView?
    
    func enableScrollWhenKeuboardAppeared(scrollView: UIScrollView){
        self.scrollVIew = scrollView
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    func removeListeners(){
        NotificationCenter.default.removeObserver(self)
    }
    
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
    
     @objc private func keyboardWillShow(notification: NSNotification){
        guard let scrollView = scrollVIew else { return }
        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame: CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame,from: nil)
        
        var contentInset: UIEdgeInsets = scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + 20
        scrollView.contentInset = contentInset
        
    }
    
     @objc private func keyboardWillHide(notification: NSNotification){
        guard let scrollView = scrollVIew else { return }
        let contentInset: UIEdgeInsets = .zero
        scrollView.contentInset = contentInset
    }
    
}

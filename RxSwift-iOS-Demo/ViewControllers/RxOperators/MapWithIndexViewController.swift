//
//  MapWithIndexViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 25/04/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MapWithIndexViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func btnAction(_ sender: Any)  {
        mapWithIndexOperator()
    }
    
    func mapWithIndexOperator()  {
        let disposeBag = DisposeBag()
        
        // 1
        Observable.of(1, 2, 3, 4, 5, 6)
            // 2
            // .mapWithIndex in deprecated now and replaced by .enumerated().map
            .enumerated().map {
                integer, index in
                index > 2 ? integer * 2 : integer
            }
            .subscribe(
                onNext: {(result) in
                    self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n onNext "+"\(result)"
            },onCompleted : {
                self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n" + " onCompleted"
            }
            )
            .disposed(by: disposeBag)
    }
    
}

//
//  MapOperator.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 27/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
class MapOperatorViewController : BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func btnAction(_ sender: Any)  {
        executeMapOperator()
    }
    
    func executeMapOperator()  {
        let disposeBag = DisposeBag()
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        Observable<NSNumber>
            .of(123, 4, 56)
            .map {
                formatter.string(from: $0) ?? ""
            }
            .subscribe(
                onNext : {
                    self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n onNext " + "\($0)"
                    print($0)
            },
                onCompleted : {
                    self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n" + " onCompleted"
            },
                onDisposed : {
                    self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n" + " onDisposed"
            }
            )
            .disposed(by: disposeBag)
    }
}

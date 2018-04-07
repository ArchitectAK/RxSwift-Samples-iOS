//
//  GenerateOperator.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 27/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
class GenerateOperatorVC: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func btnAction(_ sender: Any)  {
        executeGenerateOperator()
    }
    
    func executeGenerateOperator() {
        let source = Observable.generate(
            initialState: 0,
            condition: { $0 < 10 },
            iterate: { $0 + 1 }
        )
        
        source.subscribe(
            onNext : {
                self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n onNext " + "\($0)"
                print($0)
            },onCompleted : {
            self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n" + " onCompleted"
            },onDisposed : {
            self.myCustomView?.commonLbl.text = (self.myCustomView?.commonLbl.text ?? "") + "\n" + " onDisposed"
            }
        )
    }
}

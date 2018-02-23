//
//  CreateOperatorVC.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 21/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CreateOperatorVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createOperator()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createOperator()  {
        let source : Observable = Observable<Int>.create { observer in
            for i in 1...5 {
                observer.on(.next(i))
            }
            observer.on(.completed)
            
            // Note that this is optional. If you require no cleanup you can return
            // `Disposables.create()` (which returns the `NopDisposable` singleton)
            return Disposables.create {
                print("disposed")
            }
        }
        
        source.subscribe {
            print($0)
        }
    }

}

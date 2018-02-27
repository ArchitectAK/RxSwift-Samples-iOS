//
//  CreateOperator.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 27/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
class CreateOperator {
    
    func createOperator() -> Observable<Int> {
        return Observable<Int>.create {
            observer in
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
        
//        source.subscribe {
//            print($0)
//
//        }
    }
}

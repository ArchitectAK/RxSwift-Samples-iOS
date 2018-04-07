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
class GenerateOperator{
    func executeGenerateOperator() {
        let source = Observable.generate(
            initialState: 0,
            condition: { $0 < 3 },
            iterate: { $0 + 1 }
        )
        
        source.subscribe {
            print($0)
        }
    }

}

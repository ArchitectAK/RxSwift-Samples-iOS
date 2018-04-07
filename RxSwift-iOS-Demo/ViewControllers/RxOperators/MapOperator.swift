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
class MapOperator{
    func executeMapOperator()  {
        let disposeBag = DisposeBag()
        
        // 1
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        // 2
        Observable<NSNumber>.of(123, 4, 56)
            // 3
            .map {
                formatter.string(from: $0) ?? ""
            }
            .subscribe(onNext: {
                print($0)
            })
            .disposed(by: disposeBag)
    }

}

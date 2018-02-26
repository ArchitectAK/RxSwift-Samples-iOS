//
//  MapOperatorViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 26/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MapOperatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        executeMapOperator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

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

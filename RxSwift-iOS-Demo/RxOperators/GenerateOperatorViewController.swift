//
//  GenerateOperatorViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 25/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class GenerateOperatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

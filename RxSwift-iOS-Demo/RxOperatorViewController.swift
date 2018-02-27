//
//  RxOperatorViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 27/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class RxOperatorViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    @IBAction func executeOperator(_ sender: Any) {
    
        CreateOperator().createOperator()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//
//  RxOperatorViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 27/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class RxOperatorViewController: UIViewController {
    
    var tagNumber = 0

    @IBOutlet weak var output: UILabel!
    @IBAction func executeOperator(_ sender: Any) {
        switch tagNumber {
        case 1:
            CreateOperator().createOperator()
        case 2:
            GenerateOperator().executeGenerateOperator()
        default:
            print("Nothing")
            
        }
        
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

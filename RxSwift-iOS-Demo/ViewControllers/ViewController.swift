//
//  ViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 21/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        switch ((sender as AnyObject).tag) {
        case 1:
            let v = CreateOperatorViewController()
            self.navigationController?.pushViewController(v, animated: true)
        case 2:
            let v = GenerateOperatorVC()
            self.navigationController?.pushViewController(v, animated: true)
        default:
            print("Nothing Selected")
        }
    }
}


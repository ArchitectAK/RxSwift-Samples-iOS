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
            let newVC = storyboard?.instantiateViewController(withIdentifier: "rxOperatorViewController") as! RxOperatorViewController
            //self.present(newVC, animated: true, completion: nil)
            //let newViewController = RxOperatorViewController(nibName: "RxOperatorViewController",
//                                                            bundle: nil)
            self.navigationController?.pushViewController(newVC, animated: true)
//            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let newViewController = storyBoard.instantiateViewController(withIdentifier: "RxOperatorViewController") as! RxOperatorViewController
//            self.present(newViewController, animated: true)
        case 2:
            let newViewController = RxOperatorViewController()
            self.navigationController?.pushViewController(newViewController, animated: true)
            
        default:
            print("Nothing Selected")
        }
    }
}


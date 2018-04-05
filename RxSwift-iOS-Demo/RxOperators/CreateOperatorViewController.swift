//
//  ViewController1.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 05/04/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class CreateOperatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let myCustomView = Bundle.main.loadNibNamed("CommonView", owner: self, options: nil)?.first as? CommonView{
            myCustomView.frame = self.view.frame
            myCustomView.commonBtn.addTarget(self, action: #selector(ViewController1.btnAction(_:)), for: .touchUpInside)
            self.view.addSubview(myCustomView)
        }
    }
    
    @objc func btnAction(_ sender: Any)  {
        
        print("BTn Action")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

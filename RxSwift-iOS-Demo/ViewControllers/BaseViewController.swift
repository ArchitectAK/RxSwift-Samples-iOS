//
//  BaseViewController.swift
//  RxSwift-iOS-Demo
//
//  Created by Ankit Kumar on 07/04/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var myCustomView : CommonView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         addView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func addView()  {
        myCustomView = (Bundle.main.loadNibNamed("CommonView", owner: self, options: nil)?.first as? CommonView)!
        myCustomView?.frame = self.view.frame
        myCustomView?.commonBtn.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        self.view.addSubview(myCustomView!)
    }
    
    @objc func btnAction(_ sender : Any)  {
    
    }

}

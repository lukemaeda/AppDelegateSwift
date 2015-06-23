//
//  DelegateBViewController.swift
//  AppDelegateSwift
//
//  Created by MAEDAHAJIME on 2015/06/24.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

class DelegateBViewController: UIViewController {
    
    @IBOutlet weak var localLabel01: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        // AppDelegateクラスのメンバー変数を参照する
        var app:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        println(app.userId)
        println(app.globalStrings01)
        
        self.localLabel01.text = app.globalStrings01
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
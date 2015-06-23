//
//  DelegateAViewController.swift
//  AppDelegateSwift
//
//  Created by MAEDAHAJIME on 2015/06/24.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

class DelegateAViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var globalStrings01: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // textFiel の情報を受け取るための delegate を設定
        globalStrings01?.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Second(sender: UIButton) {
        
        // AppDelegateクラスのメンバー変数を参照する
        var app:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        println(app.userId)
        println(app.globalStrings01)
        
        app.globalStrings01 = globalStrings01.text
        
        // キーボードを閉じる
        globalStrings01.resignFirstResponder()
        
    }
}
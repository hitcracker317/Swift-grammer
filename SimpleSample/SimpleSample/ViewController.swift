//
//  ViewController.swift
//  SimpleSample
//
//  Created by MaedaAkira on 2017/06/05.
//  Copyright © 2017年 d_na_ser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let a = 10
        let b = 11
        
        let value = a + b
        
        label.text = "\(a) + \(b)= \(value)"
        label.textAlignment = NSTextAlignment.center
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


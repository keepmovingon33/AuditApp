//
//  ScoreSummaryViewController.swift
//  AuditApp
//
//  Created by Sky on 11/28/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class ScoreSummaryViewController: UIViewController {

    var arr: [Int] = [2,3,4]
    
    var adding: (Int, Int) -> (Int) = {(a: Int, b: Int) -> (Int) in
        return a + b
    }
    
    var add2: ((Int, Int) -> (Int))?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(adding(3,2))
        
        add2 = { (a: Int, b: Int) -> (Int) in
            return a + b
        }
        if let a = add2 {
            print(a(3,5))
        }
    }
}

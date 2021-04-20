//
//  AuditItemTableViewCell.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

typealias SimpleHandler = (Int) -> Int
typealias AdvancedHandler = (SimpleHandler) -> Void

class AuditItemTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    var simpleHandler: SimpleHandler?
    var advancedHanler: AdvancedHandler?
    
    func dataBinding() {
        titleLabel.text = "Audit 1"
        timeLabel.text = "11/25/20"
        progressLabel.text = "25% progress"
    }
    
    @IBAction func moreBtnTapped(_ sender: Any) {
//        if let a = self.simpleHandler?(4){
//            print(a)
//
//        }
        
        ///SimpleHandler
//        if let simple = simpleHandler {
//            print(sum(a: 3, b: 5, callback: simple))
//        }
//
        
        ///AdvancedHandler
        if let a = self.simpleHandler {
            advancedHanler?(a)
        }
        
        
        
    }
//
    func sum(a: Int, b: Int, callback: SimpleHandler) -> Int {
        return a + b + callback(5)
    }

        
        ///Advanced
    
    
}

// note1: test 1

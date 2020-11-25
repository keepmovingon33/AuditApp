//
//  AuditItemTableViewCell.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditItemTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    
    func dataBinding() {
        titleLabel.text = "Audit 1"
        timeLabel.text = "11/25/20"
        progressLabel.text = "25% progress"
    }
    
    @IBAction func moreBtnTapped(_ sender: Any) {
    }
    
}

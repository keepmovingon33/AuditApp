//
//  SectionItemTableViewCell.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class SectionItemTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
    func dataBinding() {
        headerLabel.text = "A"
        descriptionLabel.text = "Raw Materials, Packaging Materials and Suppliers Management"
        progressLabel.text = "100%"
    }
}

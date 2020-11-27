//
//  SectionExpandTableViewCell.swift
//  AuditApp
//
//  Created by Sky on 11/26/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class SectionExpandTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func dataBinding() {
        headerLabel.text = "A1.1.1."
        descriptionLabel.text = "Factory carries out inspection on each batch of raw material..."
    }
    
}

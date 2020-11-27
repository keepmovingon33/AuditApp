//
//  SectionItemTableViewCell.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

typealias SimpleClosure = (Int) -> Void

// o vn dat ten la SectionItemTableViewCellDelegate
@objc protocol SectionItemTableViewCellProtocol {
    func didSelectItem(cell: SectionItemTableViewCell, section: Int)
}

class SectionItemTableViewCell: UITableViewCell {

    weak var delegate: SectionItemTableViewCellProtocol?
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var button: UIButton!

    // cach viet 1 cho closure
    var didSelectCompletion: SimpleClosure?
    
    // cach viet 2
//    var didSelectCompletion: ((Int) -> Void)?
    
    func dataBinding() {
        headerLabel.text = "A"
        descriptionLabel.text = "Raw Materials, Packaging Materials and Suppliers Management"
        progressLabel.text = "100%"
    }
    
    @IBAction func sectionBtnTapped(_ sender: Any) {
//        delegate?.didSelectItem(cell: self, section: button.tag)
        
        // cach dung closure thay vi dung delegate
        if let completion = didSelectCompletion {
            completion(button.tag)
        }
    }
    
}

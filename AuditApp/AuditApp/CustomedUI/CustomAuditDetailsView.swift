//
//  CustomeAuditDetailsView.swift
//  AuditApp
//
//  Created by Sky on 11/24/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class CustomAuditDetailsView: BaseCustomView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextfield: UITextField!
    
    func bindingData(title: String, placeholder: String? = nil, value: String? = nil) {
        titleLabel.text = title
        contentTextfield.placeholder = placeholder
        
        if placeholder == nil {
            contentTextfield.placeholder = title
        }
        
        contentTextfield.text = value
        contentTextfield.isUserInteractionEnabled = value == nil ? true : false
    }
    
}


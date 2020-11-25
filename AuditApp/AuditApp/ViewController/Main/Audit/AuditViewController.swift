//
//  AuditViewController.swift
//  AuditApp
//
//  Created by Sky on 11/23/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditViewController: UIViewController {
    
    @IBOutlet weak var factoryNameView: CustomAuditDetailsView!
    @IBOutlet weak var produceCodeView: CustomAuditDetailsView!
    @IBOutlet weak var addressView: CustomAuditDetailsView!
    @IBOutlet weak var registrationNumberView: CustomAuditDetailsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    func setupView() {
        factoryNameView.bindingData(title: "Factory Name", value: "Hi")
        produceCodeView.bindingData(title: "Producer Code")
        addressView.bindingData(title: "Address")
        registrationNumberView.bindingData(title: "Registration", placeholder: "hi")
    }

}

//
//  AuditGuideViewController.swift
//  AuditApp
//
//  Created by Sky on 11/22/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditGuideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    func setupNavigation() {
        title = AuditConstants.auditGuideTitle
        let closeButton = UIBarButtonItem(image: UIImage(named: "ic_close"), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem  = closeButton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]

    }

    
}


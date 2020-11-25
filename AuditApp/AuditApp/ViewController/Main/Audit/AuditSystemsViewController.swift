//
//  AuditSystemsViewController.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditSystemsViewController: UIViewController {

    @IBOutlet weak var qualityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigation()
    }
    
    func setupNavigation() {
        title = AuditSystems.title
        let menuButton = UIBarButtonItem(image: UIImage(named: AuditSystems.image), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = menuButton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
}

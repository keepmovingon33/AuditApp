//
//  AuditGuideViewController.swift
//  AuditApp
//
//  Created by Sky on 11/22/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditGuideViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var viewLine1: UIView!
    @IBOutlet weak var viewLine2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        dataBiding()
    }
    
    func setupNavigation() {
        title = AuditGuideConstants.auditGuideTitle
        let closeButton = UIBarButtonItem(image: UIImage(named: "ic_close"), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem  = closeButton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func dataBiding() {
        label2.text = AuditGuideConstants.label2
        label2.textColor = UIColor.lightBlack
        label3.text = AuditGuideConstants.label3
        label3.textColor = UIColor.lightBlack
        label3.font = .boldSystemFont(ofSize: 14)
        label4.text = AuditGuideConstants.label4
        label4.textColor = UIColor.lightBlack
    
        let str1 = NSMutableAttributedString(string: AuditGuideConstants.label1a, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightBlack, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .bold)])
        let str2 = NSAttributedString(string: AuditGuideConstants.label1b, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightBlack])
        str1.append(str2)
        label1.attributedText = str1
        
        viewLine1.backgroundColor = UIColor.lineView
        viewLine2.backgroundColor = UIColor.lineView
    }

    
}


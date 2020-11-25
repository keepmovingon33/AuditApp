//
//  QualityChecklistViewController.swift
//  AuditApp
//
//  Created by Sky on 11/23/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class QualityChecklistViewController: UIViewController {

    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var qualityDescription: UILabel!
    @IBOutlet weak var auditTraitsLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var cDescriptionLabel: UILabel!
    @IBOutlet weak var ncLabel: UILabel!
    @IBOutlet weak var ncDescriptionLabel: UILabel!
    @IBOutlet weak var ofiLabel: UILabel!
    @IBOutlet weak var ofiDescriptionLabel: UILabel!
    @IBOutlet weak var naLabel: UILabel!
    @IBOutlet weak var naDescriptionLabel: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataBinding()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        title = QualityChecklist.title
        let backButton = UIBarButtonItem(image: UIImage(named: QualityChecklist.backButton), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = backButton
        
        let infoButton = UIBarButtonItem(image: UIImage(named: QualityChecklist.infoButton), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = infoButton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
    func dataBinding() {
        pageLabel.text = QualityChecklist.pageLabel
        qualityDescription.text = QualityChecklist.qualityDescriptionLabel
        auditTraitsLabel.text = QualityChecklist.auditTrailsLabel
        cLabel.text = QualityChecklist.cLabel
        cDescriptionLabel.text = QualityChecklist.cDescriptionLabel
        ncLabel.text = QualityChecklist.ncLabel
        ncDescriptionLabel.text = QualityChecklist.ncDescriptionLabel
        ofiLabel.text = QualityChecklist.ofiLabel
        ofiDescriptionLabel.text = QualityChecklist.ofiDescriptionLabel
        naLabel.text = QualityChecklist.naLabel
        naDescriptionLabel.text = QualityChecklist.naDescriptionLabel
        previousButton.setTitle(QualityChecklist.previousButtonTitle, for: .normal)
        nextButton.setTitle(QualityChecklist.nextButtonTitle, for: .normal)
        
        let qualityNumber = NSMutableAttributedString(string: QualityChecklist.qualityNumberLabel, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightBlack, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .bold)])
        let qualityDes = NSAttributedString(string: QualityChecklist.qualityDescriptionLabel, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightBlack])
        qualityNumber.append(qualityDes)
        qualityDescription.attributedText = qualityNumber
    }

}

//
//  AuditViewController.swift
//  AuditApp
//
//  Created by Sky on 11/23/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditViewController: UIViewController {
    
    
    @IBOutlet weak var referenceAuditNumberLabel: UILabel!
    
    @IBOutlet weak var auditResultsLabel: UILabel!
    @IBOutlet weak var auditScoreLabel: CustomAuditDetailsView!
    @IBOutlet weak var numberRepeatedNonconformityLabel: CustomAuditDetailsView!
    
    @IBOutlet weak var factoryDetailsLabel: UILabel!
    @IBOutlet weak var factoryNameView: CustomAuditDetailsView!
    @IBOutlet weak var produceCodeView: CustomAuditDetailsView!
    @IBOutlet weak var addressView: CustomAuditDetailsView!
    @IBOutlet weak var registrationNumberView: CustomAuditDetailsView!
    
    @IBOutlet weak var auditDetailsLabel: UILabel!
    @IBOutlet weak var dateOfAuditLabel: CustomAuditDetailsView!
    @IBOutlet weak var qadEditorLabel: CustomAuditDetailsView!
    @IBOutlet weak var designedCapLabel: CustomAuditDetailsView!
    @IBOutlet weak var aveMonthlyPrdnLabel: CustomAuditDetailsView!
    @IBOutlet weak var factoryManagerLabel: CustomAuditDetailsView!
    @IBOutlet weak var headOfQALabel: CustomAuditDetailsView!
    
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigation()
    }
    
    func setupNavigation() {
        title = AuditScreen.createNewAuditTitle
        let backbutton = UIBarButtonItem(image: UIImage(named: AuditScreen.backButton), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = backbutton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func setupView() {
        referenceAuditNumberLabel.text = AuditScreen.referenceAuditNumber
        
        auditResultsLabel.text = AuditScreen.auditResults
        auditScoreLabel.bindingData(title: AuditScreen.auditScore, value: "0%")
        numberRepeatedNonconformityLabel.bindingData(title: AuditScreen.numberRepeatedNonconformity, value: "0")
        
        factoryDetailsLabel.text = AuditScreen.factoryDetails
        factoryNameView.bindingData(title: AuditScreen.factoryName)
        produceCodeView.bindingData(title: AuditScreen.produceCode)
        addressView.bindingData(title: AuditScreen.address)
        registrationNumberView.bindingData(title: AuditScreen.registrationNumber)
        
        auditDetailsLabel.text = AuditScreen.auditDetails
        dateOfAuditLabel.bindingData(title: AuditScreen.dateOf)
        qadEditorLabel.bindingData(title: AuditScreen.qadEditor)
        designedCapLabel.bindingData(title: AuditScreen.designedCap)
        aveMonthlyPrdnLabel.bindingData(title: AuditScreen.aveMonthlyPrdn, placeholder: "Value")
        factoryManagerLabel.bindingData(title: AuditScreen.factoryManager, placeholder: "Value")
        headOfQALabel.bindingData(title: AuditScreen.headOfQA)
        
        doneBtn.setTitle(AuditScreen.doneBtn, for: .normal)
    }
}

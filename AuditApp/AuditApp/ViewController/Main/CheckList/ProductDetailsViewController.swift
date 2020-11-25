//
//  ProductDetailsViewController.swift
//  AuditApp
//
//  Created by Sky on 11/23/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    @IBOutlet weak var factoryNameLabel: UILabel!
    @IBOutlet weak var auditDateLabel: UILabel!
    @IBOutlet weak var productDetailsLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var lotNoLabel: UILabel!
    @IBOutlet weak var prodnLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var notesDescriptionLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataBinding()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }

    func setupNavigationBar() {
        title = ProductDetails.title
        let closeButton = UIBarButtonItem(image: UIImage(named: ProductDetails.image), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = closeButton
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func dataBinding() {
        factoryNameLabel.text = ProductDetails.factoryNameSymbolTitle
        auditDateLabel.text = ProductDetails.auditDateQuarter
        productDetailsLabel.text = ProductDetails.productDetailsLabel
        gradeLabel.text = ProductDetails.gradeLabel
        lotNoLabel.text = ProductDetails.lotNoLabel
        prodnLabel.text = ProductDetails.prodnDateLabel
        unitLabel.text = ProductDetails.unitNo
        notesLabel.text = ProductDetails.notesLabel
        notesDescriptionLabel.text = ProductDetails.notesDescription
        doneButton.setTitle(ProductDetails.buttonTitle, for: .normal)
    }
}

//
//  AuditListViewController.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class AuditListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataBinding()
    }
    
    func dataBinding() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
    }

}

extension AuditListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AuditItemTableViewCell", for: indexPath) as! AuditItemTableViewCell
        cell.dataBinding()
        
        return cell
    }
}

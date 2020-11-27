//
//  SectionListExpandViewController.swift
//  AuditApp
//
//  Created by Sky on 11/26/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class SectionListExpandViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    // array nhung section nao duoc chon de show
    var showSection: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataBinding()
    }
    
    func dataBinding() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "SectionItemTableViewCell", bundle: nil), forCellReuseIdentifier: "SectionItemTableViewCell")
        tableView.register(UINib(nibName: "SectionExpandTableViewCell", bundle: nil), forCellReuseIdentifier: "SectionExpandTableViewCell")
        tableView.estimatedRowHeight = 100
        tableView.estimatedSectionHeaderHeight = 100
    }
}

extension SectionListExpandViewController: UITableViewDataSource, UITableViewDelegate {
    // data binding cho row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionExpandTableViewCell", for: indexPath) as! SectionExpandTableViewCell
        cell.dataBinding()
        return cell
    }

    // so luong section trong tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    // La cai binding data cho section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "SectionItemTableViewCell") as! SectionItemTableViewCell
        header.dataBinding()
        // cach dung closure
        header.didSelectCompletion = { [weak self] index in
            guard let self = self else { return }
            self.updateTableView(at: index)
        }
        
        // cach dung delegate
        header.delegate = self
        header.button.tag = section
        return header
    }
    
    // la height cho cai section do
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // so luong rows trong moi section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if showSection.contains(section) {
            return 3
        }
        return 0
    }
    
    //height cho tung row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .leastNonzeroMagnitude
    }
    
    // cach dung closure
    func updateTableView(at section: Int) {
        
        //demo cach su dung closure cho func
//        testFunc(selectIndex: section) { number in
//            print(number)
//        }
//
//        return
        
        if let index = showSection.firstIndex(of: section) {
            showSection.remove(at: index)
        } else {
            showSection.append(section)
        }
        tableView.reloadData()
    }
    
    //demo closure dung trong function
    func testFunc(selectIndex: Int, callback: ((Int) -> Void)) {
        callback(selectIndex)
    }
}

// cach dung protocol
extension SectionListExpandViewController: SectionItemTableViewCellProtocol {
    func didSelectItem(cell: SectionItemTableViewCell, section: Int) {
        if let index = showSection.firstIndex(of: section) {
            showSection.remove(at: index)
        } else {
            showSection.append(section)
        }
        tableView.reloadData()
    }
}

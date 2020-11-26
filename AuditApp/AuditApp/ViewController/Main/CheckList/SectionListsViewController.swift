//
//  SectionListsViewController.swift
//  AuditApp
//
//  Created by Sky on 11/25/20.
//  Copyright © 2020 Sky. All rights reserved.
//

//import UIKit
//
//class SectionListsViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        dataBinding()
//    }
//
//    func dataBinding() {
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
//        tableView.register(UINib(nibName: "SectionItemTableViewCell", bundle: nil), forCellReuseIdentifier: "SectionItemTableViewCell")
//    }
//
//}
//
//extension SectionListsViewController: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionItemTableViewCell", for: indexPath) as! SectionItemTableViewCell
//        cell.dataBinding()
//        return cell
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 82
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 8
//    }
//}

import UIKit
import RxSwift
import RxCocoa

class SectionListsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let disposedBag = DisposeBag()
    let items = Observable.of([1,1,1,1,1,1,1,1])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataBinding()
    }
    
    func dataBinding() {
        tableView.register(UINib(nibName: "SectionItemTableViewCell", bundle: nil), forCellReuseIdentifier: "SectionItemTableViewCell")
        
        tableView
            .rx.setDelegate(self)
            .disposed(by: disposedBag)
        
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
        items.bind(to: tableView.rx.items(cellIdentifier: "SectionItemTableViewCell")) { row, model, cell in
            if let cell = cell as? SectionItemTableViewCell {
                cell.dataBinding()
            }
        }.disposed(by: disposedBag)
    }
}

extension SectionListsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
}


//@IBOutlet weak var tableView: UITableView!
//let disposeBag = DisposeBag()
//let items = Observable.of([1,2,3,4,5,6,7,8,9])
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//
//    dataBinding()
//}
//
//override func viewWillAppear(_ animated: Bool) {
//    super.viewWillAppear(animated)
//    setupNavigation()
//}
//
//func setupNavigation() {
//    title = AuditLists.title
//    navigationController?.navigationBar.barTintColor = UIColor.white
//    navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
//
//    self.navigationController?.navigationBar.shadowImage = UIImage()
//}
//
//func dataBinding() {
//    tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
//    items.bind(to: tableView.rx.items(cellIdentifier: AuditLists.identifier)) { row, model, cell in
//        if let cell = cell as? AuditItemTableViewCell {
//            cell.dataBinding()
//        }
//     }.disposed(by: disposeBag)
//}

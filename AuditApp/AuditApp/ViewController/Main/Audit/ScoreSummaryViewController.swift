//
//  ScoreSummaryViewController.swift
//  AuditApp
//
//  Created by Sky on 11/28/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import SpreadsheetView
import UIKit

class ScoreSummaryViewController: UIViewController {

//    var arr: [Int] = [2,3,4]
//
//    var adding: (Int, Int) -> (Int) = {(a: Int, b: Int) -> (Int) in
//        return a + b
//    }
//
//    var add2: ((Int, Int) -> (Int))?
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print(adding(3,2))
//
//        add2 = { (a: Int, b: Int) -> (Int) in
//            return a + b
//        }
//        if let a = add2 {
//            print(a(3,5))
//        }
//    }
    
    
    @IBOutlet weak var sheetView: SpreadsheetView!
        
    let columns = ["Total Ques", "C", "NC", "RNC", "NA", "OFI", "Total App Ques", "Overall Scores"]
    let rows = ["Section A", "Section B", "Section C", "Section D", "Section E", "Section F", "Section G", "Overall Score"]
    let progress = [100, 90, 88, 78, 80, 69, 98, 86]
    
    @IBOutlet weak var progressViewA: UIView!
    @IBOutlet weak var progressViewB: UIView!
    @IBOutlet weak var progressViewC: UIView!
    @IBOutlet weak var progressViewD: UIView!
    @IBOutlet weak var progressViewE: UIView!
    @IBOutlet weak var progressViewF: UIView!
    @IBOutlet weak var progressViewG: UIView!
    @IBOutlet weak var progressViewOverall: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        sheetView.register(TextCell.self, forCellWithReuseIdentifier: String(describing: TextCell.self))
        sheetView.dataSource = self
        
        updateProgress()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigation()
    }
    
    func setupNavigation() {
        title = "Score Summary"
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.mainTitle]
        let backbutton = UIBarButtonItem(image: UIImage(named: AuditScreen.backButton), style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = backbutton
        

        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func updateProgress() {
        let progressViews = [progressViewA, progressViewB, progressViewC, progressViewD, progressViewE, progressViewF, progressViewG, progressViewOverall]
        for (v, value) in zip(progressViews, progress) {
            guard let v = v else { return }
            setBackgroundColor(v: v, value: value)
            setProgressFrame(v: v, value: value)
        }
    }
    
    func setBackgroundColor(v: UIView, value: Int) {
        switch value {
        case 95...100:
            v.backgroundColor = UIColor(hexFromString: "D8D8D8")
        case 85...94:
            v.backgroundColor = UIColor(hexFromString: "FFEAAF")
        case 75...84:
            v.backgroundColor = UIColor(hexFromString: "F3F3F3")
        default:
            v.backgroundColor = UIColor(hexFromString: "FFC1BA")
        }
    }
    
    func setProgressFrame(v: UIView, value: Int) {
        UIView.animate(withDuration: 1) {
                v.frame = CGRect(x: v.frame.origin.x, y: v.frame.origin.y, width: v.frame.width - 50, height: v.frame.height)
           }
        
    }
 
}

extension ScoreSummaryViewController: SpreadsheetViewDataSource {
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
        let width = (UIScreen.main.bounds.size.width - 200) / 2
        if case 2...6 = column {
            return 50
        } else if case 0...1 = column {
            return width
        }
        return width + 20
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow column: Int) -> CGFloat {
        if column == 9 {
            return 60
        }
        return 42
    }
    
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return columns.count + 1
    }
    
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return rows.count + 2
    }
    
    func mergedCells(in spreadsheetView: SpreadsheetView) -> [CellRange] {
        return [CellRange(from: (row: 0, column: 0), to: (row: 1, column: 0)),
        CellRange(from: (row: 0, column: 1), to: (row: 0, column: 8))]
    }
    
    func frozenColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 1
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, cellForItemAt indexPath: IndexPath) -> Cell? {
        let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: TextCell.self), for: indexPath) as! TextCell
        if indexPath.row == 0 {
            if indexPath.column == 0 {
                cell.label.text = ""
            } else {
                cell.label.text = "Grand Total"
            }
        } else if indexPath.row == 1 && indexPath.column >= 1 {
            cell.label.text = columns[indexPath.column - 1]
        } else if indexPath.column == 0 {
            cell.label.text = rows[indexPath.row - 2]
        } else {
            cell.label.text = ""
        }
        return cell
    }
    
}

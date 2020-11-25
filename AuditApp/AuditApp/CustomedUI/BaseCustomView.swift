//
//  BaseCustomView.swift
//  AuditApp
//
//  Created by Sky on 11/24/20.
//  Copyright © 2020 Sky. All rights reserved.
//

import UIKit

class BaseCustomView: UIView {

    var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }

    private func nibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true

        addSubview(view)
    }

    private func loadViewFromNib() -> UIView {
        let nibName = nibFileName()
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView

        return nibView
    }
    
    private func nibFileName() -> String {
        return NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}

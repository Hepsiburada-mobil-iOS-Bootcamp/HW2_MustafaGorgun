//
//  BaseView.swift
//  PermissionProject
//
//  Created by MstfGrgn on 30.09.2021.
//

import UIKit

class BaseView : UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewConfigurations()
        addMajorViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViewConfigurations(){}
    func addMajorViewComponents(){}
}

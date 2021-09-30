//
//  ActionButton.swift
//  PermissionProject
//
//  Created by MstfGrgn on 30.09.2021.
//

import UIKit

class ActionButton: UIView {
    private lazy var containerview : UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .yellow
        return temp
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addContainerView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func addContainerView(){
        addSubview(containerview)
        
        NSLayoutConstraint.activate([
            containerview.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerview.topAnchor.constraint(equalTo: topAnchor),
            containerview.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerview.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

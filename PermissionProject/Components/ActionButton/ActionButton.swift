//
//  ActionButton.swift
//  PermissionProject
//
//  Created by MstfGrgn on 30.09.2021.
//

import UIKit

class ActionButton: BaseView {
    private let data: ActionButtonData
    private lazy var containerview : UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .yellow
        return temp
    }()
    
    private lazy var titleInfo: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = ""
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
    }()
    init(frame: CGRect, data: ActionButtonData) {
        self.data = data
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func addMajorViewComponents() {
        super.addMajorViewComponents() // The reason why we call super here is that if there is a struct inside the addmajorcomponent function in a superclass, it will work. After running the function's own structs with Super, we can do the operations that we need to add to the func.
        addContainerView() // And then we can insert our operation
        loadData()
    }
    private func addContainerView(){
        addSubview(containerview)
        containerview.addSubview(titleInfo)
        
        NSLayoutConstraint.activate([
            containerview.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerview.topAnchor.constraint(equalTo: topAnchor),
            containerview.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerview.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleInfo.centerXAnchor.constraint(equalTo: containerview.centerXAnchor),
            titleInfo.centerYAnchor.constraint(equalTo: containerview.centerYAnchor)
        ])
    }
    func loadData(){
        titleInfo.text = data.text
        switch data.buttontype{
        case .filled(let theme):
            containerview.backgroundColor = theme.value
            titleInfo.textColor = .white
        case .outlined(let theme):
            containerview.backgroundColor = .white
            containerview.layer.borderWidth = 1
            containerview.layer.borderColor = theme.value.cgColor
            titleInfo.textColor = theme.value
        }
        
    }
}

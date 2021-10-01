//
//  ActionModule.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import UIKit

class ActionModule: GenericBaseView<ActionModuleData>{
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        return view
    }()
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [negativeButton, pozitiveButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
    }()
    private lazy var negativeButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return temp
    }()
    private lazy var pozitiveButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return temp
    }()
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    private func addUserComponents() {
            addSubview(containerView)
            containerView.addSubview(mainStackView)
            
            NSLayoutConstraint.activate([
            
                containerView.topAnchor.constraint(equalTo: topAnchor),
                containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
                containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
                containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
                
                mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
                mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
                mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
                mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
            
            ])
        }

    override func loadDataView() {
        super.loadDataView()
        
        guard let data = returnData()  else { return }
        pozitiveButton.setData(by: data.positifButtonData)
        negativeButton.setData(by: data.negativeButtonData)
    }
}

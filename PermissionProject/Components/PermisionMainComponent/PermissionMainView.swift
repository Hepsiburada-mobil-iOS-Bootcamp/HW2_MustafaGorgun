//
//  PermissionMainComponent.swift
//  PermissionProject
//
//  Created by MstfGrgn on 2.10.2021.
//

import UIKit
class PermissionMainView: GenericBaseView<PermissionMainViewData>{
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        return view
    }()
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [permissionImage,permissionInfoView, permissionActionModule])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    private lazy var permissionImage: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.contentMode = .scaleAspectFill
        return temp
    }()
    private lazy var permissionInfoView: LabelPackComponent = {
        let temp = LabelPackComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    private lazy var permissionActionModule: ActionModule = {
        let temp = ActionModule()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
    }
    private func addUserInterfaceComponent(){
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
        guard let data = returnData() else{fatalError("Provide Some Permission Data Man")}
        permissionImage.image = data.Image
        permissionInfoView.setData(by: data.labelPackInfoData)
        permissionActionModule.setData(by: data.actionModuleData)
        
    }
}

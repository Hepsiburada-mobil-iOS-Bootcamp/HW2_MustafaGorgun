//
//  PermissionViewController.swift
//  PermissionProject
//
//  Created by MstfGrgn on 2.10.2021.
//

import UIKit

class PermissionViewController: UIViewController {
    private var permissionMainView: PermissionMainView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    private func addPermissionMainView(){
        permissionMainView = PermissionMainView()
        permissionMainView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(permissionMainView)
        NSLayoutConstraint.activate([
            permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
    }
    func getPermissionViewData() -> PermissionMainViewData {
        return PermissionMainViewData(Image: PermissionImages.camera.value, labelPackInfoData: LabelPackComponentData(title:"Camera Permission" , subTitle:"Would you please give us permission to use camera."), actionModuleData: ActionModuleData(positifButton: ActionButtonData(text:"OK", buttontype: .filled(.bright)), negativeButton: ActionButtonData(text: "NOT NOW", buttontype: .outlined(.smooth))))
    }

}

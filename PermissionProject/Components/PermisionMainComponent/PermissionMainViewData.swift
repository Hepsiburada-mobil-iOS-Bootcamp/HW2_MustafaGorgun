//
//  PermissionMainComponentData.swift
//  PermissionProject
//
//  Created by MstfGrgn on 2.10.2021.
//

import Foundation
import UIKit
class PermissionMainViewData {
    private(set) var Image: UIImage
    private(set) var labelPackInfoData: LabelPackComponentData
    private(set) var actionModuleData: ActionModuleData
    
    init(Image: UIImage,labelPackInfoData: LabelPackComponentData, actionModuleData: ActionModuleData) {
        self.Image = Image
        self.labelPackInfoData = labelPackInfoData
        self.actionModuleData = actionModuleData
    }
}

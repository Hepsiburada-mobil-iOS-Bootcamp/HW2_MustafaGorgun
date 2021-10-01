//
//  ActionModuleData.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import Foundation

class ActionModuleData {
    private(set) var negativeButtonData: ActionButtonData
    private(set) var positifButtonData: ActionButtonData
    
    init(positifButton: ActionButtonData, negativeButton: ActionButtonData) {
        self.positifButtonData = positifButton
        self.negativeButtonData = negativeButton
    }
}

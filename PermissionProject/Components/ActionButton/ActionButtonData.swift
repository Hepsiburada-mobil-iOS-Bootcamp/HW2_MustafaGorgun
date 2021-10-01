//
//  ActionButtonData.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import Foundation
import UIKit
typealias VoidCompletingBlock = () -> Void
class ActionButtonData{
    
    private(set) var text: String
    private(set) var buttontype: ActionButtonType
    private(set) var actionButtonListener : VoidCompletingBlock?

    
    init(text : String, buttontype: ActionButtonType)
    {
        self.text = text
        self.buttontype = buttontype
    }
    func setActionButtonListener(by value: VoidCompletingBlock?) -> Self {
        actionButtonListener = value
        return self
    }
}

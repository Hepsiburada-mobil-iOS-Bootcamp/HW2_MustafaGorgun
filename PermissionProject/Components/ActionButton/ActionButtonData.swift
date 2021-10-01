//
//  ActionButtonData.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import Foundation
import UIKit

class ActionButtonData{
    
    private(set) var text: String
    private(set) var buttontype: ActionButtonType
    
    init(text : String, buttontype: ActionButtonType)
    {
        self.text = text
        self.buttontype = buttontype
    }
    
}

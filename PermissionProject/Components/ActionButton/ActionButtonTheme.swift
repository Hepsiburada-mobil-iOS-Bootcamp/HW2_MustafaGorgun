//
//  ActionButtonTheme.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import UIKit

enum ActionButtonTheme: GenericValueProtocol{
    typealias Value = UIColor
    var value: UIColor{
        switch self {
        case .smooth:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        case .bright:
            return #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        case .negativeAction:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }
    case smooth
    case negativeAction
    case bright
}

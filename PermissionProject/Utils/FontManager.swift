//
//  FontManager.swift
//  PermissionProject
//
//  Created by MstfGrgn on 1.10.2021.
//

import UIKit

enum FontManager : GenericValueProtocol{
    typealias Value = UIFont
    
    var value: UIFont{
        switch self {
        case .bold(let cGFloat):
            return UIFont.systemFont(ofSize: 14, weight: .bold)
        case .regular(let cGFloat):
            return UIFont.systemFont(ofSize: 14, weight: .regular)
        }
    }

    case bold(CGFloat)
    case regular(CGFloat)
}

//
//  PermissionImages.swift
//  PermissionProject
//
//  Created by MstfGrgn on 2.10.2021.
//

import Foundation
import UIKit
enum PermissionImages:String, GenericValueProtocol{
    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case camera = "camera_"
    case photos = "photos_"
}

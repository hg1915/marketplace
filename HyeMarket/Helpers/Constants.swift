//
//  Constants.swift
//  HyeMarket
//
//  Created by GGTECH LLC on 2/7/22.
//

import Foundation

//Firebase Headers
public let kUSER_PATH = "User"
public let kCATEGORY_PATH = "Category"
public let kITEMS_PATH = "Items"
public let kBASKET_PATH = "Basket"



//Category
public let kNAME = "name"
public let kIMAGENAME = "imageName"
public let kOBJECTID = "objectId"



//Item
public let kCATEGORYID = "categoryId"
public let kDESCRIPTION = "description"
public let kPRICE = "price"
public let kIMAGELINKS = "imageLinks"


import UIKit

enum SFSymbols {
    static let location     = UIImage(systemName: "mappin.and.ellipse")
    static let repos        = UIImage(systemName: "folder")
    static let gists        = UIImage(systemName: "text.alignleft")
    static let followers    = UIImage(systemName: "heart")
    static let following    = UIImage(systemName: "person.2")
}


enum Images {
    static let placeholder              = UIImage(named: "avatar-placeholder")
    static let emptyStateLogo           = UIImage(named: "empty-state-logo")
    static let ghLogo                   = UIImage(named: "gh-logo")
}

//
//  Bundle+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import Foundation

extension Bundle {

    private static let bundleID = "one.credify.OriginalFramework"

    static var module: Bundle {
        guard let path = Bundle(identifier: bundleID)?.resourcePath else { return .main }
        return Bundle(path: path.appending("/OriginalFramework.bundle")) ?? .main
    }
    
//    static var module: Bundle {
//        return Bundle(identifier: bundleID) ?? .main
//    }

}

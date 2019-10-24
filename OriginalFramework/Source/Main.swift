//
//  Main.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

public struct TestFramework {
    public static func getVC() -> UINavigationController {
        UIFont.loadMyFonts
        return LoginViewController.instantiate()
    }
    
    public static func start() {
        UIFont.loadMyFonts
        let vc = LoginViewController.instantiate()
        let window = UIApplication.shared.keyWindow
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}

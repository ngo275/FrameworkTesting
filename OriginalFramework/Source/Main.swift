//
//  Main.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

public struct TestFramework {
    public static func start() {
        let vc = LoginViewController.instantiate()
        let window = UIApplication.shared.keyWindow
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}

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
        setNavigationBar()
        return LoginViewController.instantiate()
    }
    
    public static func start() {
        UIFont.loadMyFonts
        setNavigationBar()
        let vc = LoginViewController.instantiate()
        let window = UIApplication.shared.keyWindow
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
    
    // MARK: - Private methods
    
    private static func setNavigationBar() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.abeatbyKai(ofSize: 34), NSAttributedString.Key.foregroundColor: UIColor.ex.white]
        navigationBarAppearace.titleTextAttributes = [NSAttributedString.Key.font: UIFont.abeatbyKai()]
        navigationBarAppearace.tintColor = UIColor.ex.white
        navigationBarAppearace.barTintColor = UIColor.ex.backgroundDark
        navigationBarAppearace.isTranslucent = false
    }
}

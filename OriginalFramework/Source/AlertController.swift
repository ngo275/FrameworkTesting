//
//  AlertController.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/29.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

class AlertController: UIAlertController {
    private lazy var alertWindow: UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = ClearViewController()
        window.backgroundColor = UIColor.clear
        window.windowLevel = UIWindow.Level.alert
        return window
    }()
    
    /// Shows a custom alert controller.
    func show(animated flag: Bool = true, completion: (() -> Void)? = nil) {
        guard let rootVC = alertWindow.rootViewController else { return }
        alertWindow.makeKeyAndVisible()
        rootVC.present(self, animated: flag, completion: completion)
    }
}

private class ClearViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIApplication.shared.statusBarStyle
    }
    
    override var prefersStatusBarHidden: Bool {
        return UIApplication.shared.isStatusBarHidden
    }
}

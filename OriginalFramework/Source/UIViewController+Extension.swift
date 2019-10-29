//
//  UIViewController+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/29.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

extension UIViewController {    
    func topMostViewController() -> UIViewController {
        if self.presentedViewController == nil {
            return self
        }
        if let navigation = self.presentedViewController as? UINavigationController,
            let vc = navigation.visibleViewController?.topMostViewController() {
            return vc
        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
    
}


//
//  UIApplication+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/29.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        return self.keyWindow?.rootViewController?.topMostViewController()
    }
}


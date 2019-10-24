//
//  UIColor+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/24.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

extension UIColor: ExtensionCompatible {}

extension Extension where Base: UIColor {
    static var backgroundDark: UIColor {
        return UIColor(named: "BackgroundDark", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var backgroundLight: UIColor {
        return UIColor(named: "BackroundLight", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var black: UIColor {
        return UIColor(named: "Black", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var blue: UIColor {
        return UIColor(named: "Blue", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var boundaryBlack: UIColor {
        return UIColor(named: "BoundaryBlack", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var boundaryWhite: UIColor {
        return UIColor(named: "BoundaryWhite", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var darkRed: UIColor {
        return UIColor(named: "DarkRed", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var gray: UIColor {
        return UIColor(named: "Gray", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var green: UIColor {
        return UIColor(named: "Green", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var lightBlue: UIColor {
        return UIColor(named: "LightBlue", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var lightGreen: UIColor {
        return UIColor(named: "LightGreen", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var lightYellow: UIColor {
        return UIColor(named: "LightYellow", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var loadingBackground: UIColor {
        return UIColor(named: "LoadingBackground", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var orange: UIColor {
        return UIColor(named: "Orange", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var purple: UIColor {
        return UIColor(named: "Purple", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var red: UIColor {
        return UIColor(named: "Red", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var white: UIColor {
        return UIColor(named: "White", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }

    static var whiteGray: UIColor {
        return UIColor(named: "WhiteGray", in: Bundle(for: LoginViewController.self), compatibleWith: nil)!
    }
}


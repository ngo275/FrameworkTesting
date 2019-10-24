//
//  UIFont+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/24.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

extension UIFont {
    class func abeatbyKai(ofSize size: CGFloat = 22) -> UIFont {
        return UIFont(name: "AbeatbyKai", size: size) ?? UIFont()
    }
    class func quicksand(ofSize size: CGFloat = 17) -> UIFont {
        return UIFont(name: "Quicksand-Regular", size: size) ?? UIFont()
    }
    
    private class MyDummyClass {}

    static func loadFontWith(name: String) {
        let frameworkBundle = Bundle(for: MyDummyClass.self)
        let pathForResourceString = frameworkBundle.path(forResource: name, ofType: "ttf")
        let fontData = NSData(contentsOfFile: pathForResourceString!)
        let dataProvider = CGDataProvider(data: fontData!)
        let fontRef = CGFont(dataProvider!)
        var errorRef: Unmanaged<CFError>? = nil

        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            NSLog("Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }
    }

    static func loadOtfFontWith(name: String) {
        let frameworkBundle = Bundle(for: MyDummyClass.self)
        let pathForResourceString = frameworkBundle.path(forResource: name, ofType: "otf")
        let fontData = NSData(contentsOfFile: pathForResourceString!)
        let dataProvider = CGDataProvider(data: fontData!)
        let fontRef = CGFont(dataProvider!)
        var errorRef: Unmanaged<CFError>? = nil

        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            NSLog("Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }
    }

    static let loadMyFonts: () = {
        loadFontWith(name: "Quicksand-Bold")
        loadFontWith(name: "Quicksand-Medium")
        loadFontWith(name: "Quicksand-Regular")
        loadFontWith(name: "Quicksand-Light")
        loadFontWith(name: "ABEAKRG")
        loadOtfFontWith(name: "abeatbyKaiRegular")
    }()
}

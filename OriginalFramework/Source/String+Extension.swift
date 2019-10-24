//
//  String+Extension.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import Foundation

extension String {
    /// Return a text defined in localization files depending upon a location of each user.
    func localized(bundle: Bundle = .main, tableName: String = "Localizable", defaultValue: String = "") -> String {
        var dv = defaultValue
        if defaultValue.isEmpty {
            dv = "**\(self)**"
        }
        return NSLocalizedString(self, tableName: tableName, bundle: bundle, value: dv, comment: "")
    }
}

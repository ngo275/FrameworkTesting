//
//  LoginViewController.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit
import BLTNBoard

class LoginViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button2: UIButton!
    
    private let bundle = Bundle(for: LoginViewController.self)
    var bulletinManager: BLTNItemManager?
    
    static func instantiate() -> UINavigationController {
        let sb = UIStoryboard(name: "Login", bundle: Bundle(for: LoginViewController.self))
        let vc = sb.instantiateInitialViewController() as! UINavigationController
        return vc
    }
    
    private func makeBulletinManager() -> BLTNItemManager {
        let page = BLTNPageItem(title: "Title!!")
        page.image = UIImage(named: "logo_credify", in: bundle, compatibleWith: nil)
        
        let appearance = BLTNItemAppearance()
        appearance.titleFontDescriptor = UIFont.abeatbyKai().fontDescriptor
        appearance.descriptionFontDescriptor = UIFont.quicksand().fontDescriptor
        appearance.buttonFontDescriptor = UIFont.quicksand().fontDescriptor
        page.appearance = appearance
        page.descriptionText = "Some Description"
        page.actionButtonTitle = "Execute"
        page.actionHandler = { item in
            self.goNext()
        }
        
        let manager = BLTNItemManager(rootItem: page)
        return manager
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTexts()
        setupImage()
    }
    
    func setupTexts() {
        button.setTitle("Button".localized(bundle: bundle, tableName: "Login"), for: .normal)
        button2?.setTitle("Button".localized(bundle: bundle, tableName: "Login"), for: .normal)
    }
    
    func setupImage() {
        imageView.image = UIImage(named: "ic_pincode_on", in: bundle, compatibleWith: nil)
    }
    
    @IBAction func tapButton(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func tapButton2(_ sender: Any) {
        
    }
    
    func showAlert() {
        let alert = AlertController(title: "Alert", message: "hahaha", preferredStyle: .alert)
        let action = UIAlertAction(title: "NEXT", style: .default) { _ in
            self.showPopup()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func showPopup() {
        self.bulletinManager = self.makeBulletinManager()
        guard let vc = UIApplication.shared.topMostViewController() else {
            NSLog("No view controller was found in UIApplication.shared")
            return
        }
        self.bulletinManager?.showBulletin(above: vc)
    }
    
    func goNext() {
        self.bulletinManager?.dismissBulletin()
        let vc = InputViewController.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }

}

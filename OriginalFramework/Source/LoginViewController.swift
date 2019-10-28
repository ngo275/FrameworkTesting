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
    
    var bulletinManager: BLTNItemManager?
    
    static func instantiate() -> UINavigationController {
        let sb = UIStoryboard(name: "Login", bundle: Bundle(for: LoginViewController.self))
        let vc = sb.instantiateInitialViewController() as! UINavigationController
        return vc
    }
    
    private func makeBulletinManager() -> BLTNItemManager {
        let page = BLTNPageItem(title: "Title!!")
        page.image = UIImage(named: "logo_credify")
        
        let appearance = BLTNItemAppearance()
        appearance.titleFontDescriptor = UIFont.abeatbyKai().fontDescriptor
        appearance.descriptionFontDescriptor = UIFont.quicksand().fontDescriptor
        appearance.buttonFontDescriptor = UIFont.quicksand().fontDescriptor
        page.appearance = appearance
        page.isDismissable = false
        page.requiresCloseButton = false
        // page.descriptionText = String(format: "PendingTxDescription".localized(tableName: tn), presenter.pendingField)
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
        button.setTitle("Button".localized(bundle: Bundle(for: LoginViewController.self), tableName: "Login"), for: .normal)
    }
    
    func setupImage() {
        imageView.image = UIImage(named: "ic_pincode_on", in: Bundle(for: LoginViewController.self), compatibleWith: nil)
    }
    
    @IBAction func tapButton(_ sender: Any) {
        self.bulletinManager = self.makeBulletinManager()
        self.bulletinManager?.showBulletin(in: UIApplication.shared)
    }
    
    func goNext() {
        let vc = InputViewController.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

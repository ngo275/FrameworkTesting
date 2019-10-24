//
//  LoginViewController.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    static func instantiate() -> UINavigationController {
        let sb = UIStoryboard(name: "Login", bundle: Bundle(for: LoginViewController.self))
        let vc = sb.instantiateInitialViewController() as! UINavigationController
        return vc
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

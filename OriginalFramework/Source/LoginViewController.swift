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
    
    static func instantiate() -> UINavigationController {
        let sb = UIStoryboard(name: "Login", bundle: Bundle(for: LoginViewController.self))
        let vc = sb.instantiateInitialViewController() as! UINavigationController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTexts()
    }
    
    func setupTexts() {
        button.setTitle("Button".localized(bundle: Bundle(for: LoginViewController.self), tableName: "Login"), for: .normal)
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

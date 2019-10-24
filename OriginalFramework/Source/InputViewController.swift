//
//  InputViewController.swift
//  OriginalFramework
//
//  Created by ShuichiNagao on 2019/10/23.
//  Copyright © 2019 Shuichi Nagao. All rights reserved.
//

import UIKit
import HDWallet

class InputViewController: UIViewController {

    @IBOutlet weak var pubKeyLabel: UILabel!
    @IBOutlet weak var privKeyLabel: UILabel!
    @IBOutlet weak var mnemonicLabel: UILabel!
    @IBOutlet weak var pubKeyTextView: UITextView!
    @IBOutlet weak var privKeyTextView: UITextView!
    @IBOutlet weak var mnemonicTextView: UITextView!
    
    static func instantiate() -> InputViewController {
        let sb = UIStoryboard(name: "Input", bundle: Bundle(for: InputViewController.self))
        let vc = sb.instantiateInitialViewController() as! InputViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        HDWalletInitSDK(HDWalletCustomNet, "http://credify-nodeos.ddns.net")
        
        setTexts()
        interactHDWallet()
        setFont()
    }
    
    private func setTexts() {
        pubKeyLabel.text = "PubKey".localized(bundle: Bundle(for: InputViewController.self), tableName: "Input")
        privKeyLabel.text = "PrivKey".localized(bundle: Bundle(for: InputViewController.self), tableName: "Input")
        mnemonicLabel.text = "Mnemonic".localized(bundle: Bundle(for: InputViewController.self), tableName: "Input")
    }
    
    private func setFont() {
        privKeyLabel.font = UIFont.abeatbyKai()
        mnemonicLabel.font = UIFont.quicksand()
    }

    private func interactHDWallet() {
        guard let hdwallet = HDWalletCreateWallet(nil) else { return }
        let pubKey = hdwallet.getMasterPublicKey()
        let privKey = hdwallet.getMasterPrivateKey()
        let mnemonic = hdwallet.mnemonic
        pubKeyTextView.text = pubKey
        privKeyTextView.text = privKey
        mnemonicTextView.text = mnemonic
    }

}

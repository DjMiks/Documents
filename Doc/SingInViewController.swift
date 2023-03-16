//
//  SingInViewController.swift
//  Doc
//
//  Created by Максим Ялынычев on 15.03.2023.
//

import UIKit
import KeychainSwift


class SingInViewController: UIViewController {
    
    let keyChain = KeychainSwift()
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBAction func tapSingInButton(_ sender: Any) {
        
        if passTextField.text != nil && passTextField.text == keyChain.get("UserPass") {
            let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabBar")
            self.navigationController?.pushViewController(tabBar, animated: true)
        } else {
            let ac = UIAlertController(title: "Sorry", message: "Wrong password, please try again", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel)
            ac .addAction(action)
            self.navigationController?.present(ac, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
}


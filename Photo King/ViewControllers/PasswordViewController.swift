//
//  PasswordViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/28/24.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet var continueButton: UIButton!
    @IBOutlet var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        continueButton.layer.cornerRadius = continueButton.frame.size.height/2
    }
    
    @IBAction func didTapBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func didTapContinueButton(sender: UIButton) {
        guard let password = txtPassword.text else {
            return
        }
        guard let storyboard = self.storyboard else {
            return
        }
        let vc = storyboard.instantiateViewController(withIdentifier: identifier.EmailVC) as! EmailViewController
        vc.password = password
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

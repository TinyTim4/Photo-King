//
//  ViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = btnLogin.frame.size.height/2
        btnSignUp.layer.cornerRadius = btnSignUp.frame.size.height/2
    }
    
    @IBAction func didTapLoginButton(sender: UIButton) {
        print("Login Tapped")
    }
    @IBAction func didTapSignUpButton(sender: UIButton) {
        guard let storyboard = self.storyboard else {
            return
        }
        if UserDefaults.standard.bool(forKey:  Key.permission) {
            let vc = (storyboard.instantiateViewController(withIdentifier: identifier.signupVC))
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            let vc = storyboard.instantiateViewController(withIdentifier: identifier.GetStartedVC)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}

